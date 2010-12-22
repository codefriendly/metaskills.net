require 'builder'
require 'digest/md5'

class Article < Content
  
  include ActionView::Helpers::SanitizeHelper, ERB::Util
  
  has_many :comments
  has_many :assigned_sections, :dependent => :destroy
  has_many :sections, :through => :assigned_sections, :order => 'sections.name'
  
  scope :ordered, order('published_at ASC')
  
  
  def puts_content
    puts(puttable_content)
  end
  
  def puttable_content
%|--- 
layout: post
title: #{title}
disqus_id: #{disqus_identifier2}
categories: 
#{categories.to_yaml.from(4).strip.insert(0,"\n").gsub("\n","\n  ").from(1)}
---
\n\n#{body}\n\n|
  end
  
  def categories
    sections.map(&:name).map(&:downcase) - ['home']
  end
  
  def rewrite_rule
    "RewriteRule ^#{disqus_identifier2.from(1)}$ #{disqus_identifier} [L]"
  end
  
  def jekyll_filename
    "#{published_at.to_s(:db).split(' ').first}-#{permalink}.html"
  end
  
  def jekyll_filename2
    "#{ymd_dirs('-')}-#{permalink}.html"
  end
  
  def disqus_identifier
    date_slashes = published_at.to_s(:db).split(' ').first.gsub('-','/')
    "/#{date_slashes}/#{permalink}/"
  end
  
  def disqus_identifier2
    "/#{ymd_dirs('/')}/#{permalink}"
  end
  
  def ymd_dirs(joiner)
    year = published_at.year.to_s
    month = published_at.month.to_s
    month = month.first == '0' ? month.second : month
    day = published_at.day.to_s
    day = day.first == '0' ? day.second : day
    [year, month, day].join(joiner)
  end
  
  def self.jekyll
    rewrite_rules = []
    process_folder = Rails.root + '..' + '_posts2do'
    FileUtils.rm_rf(process_folder.to_s)
    FileUtils.mkdir_p(process_folder.to_s)
    Article.ordered.all.each do |article|
      post_file = (process_folder + article.jekyll_filename).to_s
      rewrite_rules << article.rewrite_rule
      File.open(post_file,'w') { |f| f.write(article.puttable_content) }
    end
    File.open((process_folder+'_rewrites.txt'),'w') { |f| f.write(rewrite_rules.join("\n")) }
  end
  
  def self.jskit
    xml = Builder::XmlMarkup.new(:indent => 2)
    xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
    xml.rss 'version' => "2.0", 'xmlns:dc' => "http://purl.org/dc/elements/1.1/", 'xmlns:atom' => "http://www.w3.org/2005/Atom", 'xmlns:media' => "http://search.yahoo.com/mrss/" do
      Article.ordered.all.each do |article|
        next if article.comments.approved.blank?
        xml.channel do
          xml.title article.title
          xml.link  "http://metaskills.net#{article.disqus_identifier2}"
          xml.tag!  'atom:link', '', :rel => 'self', :type => 'application/rss+xml', :href => 'http://js-kit.com/rss/metaskills.net/'
          xml.tag!  'jskit:attribute', '', :key => 'md5path', :value => Digest::MD5.hexdigest(article.disqus_identifier2)
          xml.tag!  'jskit:attribute', '', :key => 'path', :value => ''
          xml.description    article.title
          xml.generator      'JS-Kit.com Bulk Site Exporter 0.8'
          xml.lastBuildDate  article.published_at.strftime("%a, %d %b %Y %H:%M:%S +0000")
          article.comments.approved.each_with_index do |comment, comment_index|
            xml.item do
              xml.guid          "jsid-2#{article.id}-#{comment_index}"
              xml.pubDate       comment.published_at.strftime("%a, %d %b %Y %H:%M:%S +0000")
              xml.tag!          'jskit:attribute', '', :key => 'IP', :value => comment.author_ip
              xml.author        comment.author
              xml.description   comment.body
              xml.tag!          'jskit:attribute', '', :key => 'sync_peer_3', :value => "#{article.id}-#{comment_index}"
              xml.tag!          'jskit:attribute', '', :key => 'foreign', :value => '3'
            end
          end
        end
      end
    end
    File.open(File.join(Rails.root,'tmp','metaskills_jskit.xml'),'w') { |f| f.write(xml.target!) }
  end
  
  
  
end