
Development Setup: Typically I have python26 installed.

  $ sudo port install py26-pygments
    Add to PATH /opt/local/Library/Frameworks/Python.framework/Versions/2.6/bin
  
  $ bundle install

  $ sass --watch sass:css
  
  $ setopt rmstarsilent
  $ rm -rf _site/* && sass _sass/site.scss:resource/site.css && jekyll


TODO:

  * Consider using feedburner vs my own alternate atom?


TODO: (after launch)

  * Turn on "Cross-domain Receiver URL" in DISQUS settings.
