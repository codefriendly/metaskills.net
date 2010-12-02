
Development Setup: Typically I have python26 installed.

  $ sudo port install py26-pygments
    Add to PATH /opt/local/Library/Frameworks/Python.framework/Versions/2.6/bin
  
  $ bundle install

  $ sass --scss --watch _sass:_site/resource --style compact --no-cache
  
  $ setopt rmstarsilent
  $ rm -rf _site/* && sass _sass/site.scss:resource/site.css && jekyll
  
  $ tidy -config tidy.conf
  $ tidy -config tidy.conf -modify _site/2010/10/18/tinytds-a-modern-simple-and-fast-freetds-library-for-ruby-using-db-library/index.html
  $ tidy -config tidy.conf -modify _site/2010/08/19/how-to-clean-a-campfire-room-of-uploads/index.html
  
  $ find _site -name "*.html" -exec tidy "-config tidy.conf -modify \;"


TODO:

  * Design
    - Fixed Left Nav / Fat Bottom Area
    - Make favicon.ico and apple-touch-icon.png. (avatar wit jd hat)
  * Consider using feedburner vs my own alternate atom?
  * Make a Tidy converter for jekyll


TODO: (after launch)

  * Turn on "Cross-domain Receiver URL" in DISQUS settings.


Deploy:

  * Make sure to use "--style compressed" with sass.
  * 