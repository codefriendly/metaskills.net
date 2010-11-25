
Development Setup: Typically I have python26 installed.

  $ sudo port install py26-pygments
    Add to PATH /opt/local/Library/Frameworks/Python.framework/Versions/2.6/bin
  
  $ bundle install

  $ sass --scss --watch _sass:_site/resource --style compact --no-cache
  
  $ setopt rmstarsilent
  $ rm -rf _site/* && sass _sass/site.scss:resource/site.css && jekyll


TODO:

  * Consider using feedburner vs my own alternate atom?


TODO: (after launch)

  * Turn on "Cross-domain Receiver URL" in DISQUS settings.


Deploy:

  * Make sure to use "--style compressed" with sass.
  * 