
= Todo

* Design
  - Fixed Left Nav / Fat Bottom Area
* Test &, <, > in content with Tidy.
* Turn on "Cross-domain Receiver URL" in DISQUS settings.
* Make sure to use "--style compressed" with sass.
* Think about google sitemap again.
* Consider using feedburner vs my own alternate atom?
  - Consider this XML too. https://github.com/metajack/metajack.im/blob/master/atom.xml
* Consider doing HP with summarize
  http://intridea.com/2010/12/3/summarize-a-ruby-c-binding-for-open-text-summarizer
* Make sure I have good content types from apache for .ttf true type fonts.


= Development Setup

Misc notes on setting up a development environment. Rarely needs to be done, but wanted to document my personal setup.
  
  1) Install some deps.
     $ sudo port install tidy
     $ sudo port install py26-pygments
       Add /opt/local/Library/Frameworks/Python.framework/Versions/2.6/bin 
       to $PATH for pygmentize binary.
     $ bundle install

  2) Use this SCSS bundle. Requires nokigiri, in Gemfile. 
     $ cd ~/Library/Application\ Support/TextMate/Bundles
     $ git clone git://github.com/kuroir/SCSS.tmbundle.git "SCSS.tmbundle"
  
  3) Clone zepto.
     $ cd ~/Repositories && git clone git://github.com/madrobby/zepto.git
     $ git checkout v0.3


= Developing

After all things are installed, here are some development helpers.
  
  1) Build zepto.
     $ cd ~/Repositories/zepto && git checkout v0.3 && rake && 
       cp dist/zepto.min.js ~/Repositories/metaskills.net/resource/zepto.js

  2) Handy to watch for scss file changes while writing.
     $ sass --scss --watch _sass:_site/resource --style compact --no-cache
  
  3) Create the site and tidy it.
     $ setopt rmstarsilent
     $ rm -rf _site/* && sass _sass/site.scss:resource/site.css && jekyll && 
       find _site -name "*.html" -exec tidy -config $(pwd)/tidy.conf {} \;


= License

All blog content and images are Copyright (c) 2006-2011, Ken Collins. 
Use is strictly forbidden unless consent is given!
Only jekyll plugins and helpers are MIT Licensed. 





