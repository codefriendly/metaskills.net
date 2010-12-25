require 'jekyll'
require 'summarize'

module Jekyll
  module Filters

    def summarize(input)
      input.summarize
    end
  
  end
end

module Jekyll
  class SummarizeTag < Liquid::Tag

    def render(context)
      @markup.summarize
    end
    
  end
end

Liquid::Template.register_tag('summarize', Jekyll::SummarizeTag)

