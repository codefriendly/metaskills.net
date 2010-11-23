
Development Setup: Typically I have python26 installed.

  $ sudo port install py26-pygments
  $ bundle install

  $ sass --watch sass:css
  
  $ setopt rmstarsilent
  $ rm -rf _site/* && sass _sass/site.scss:css/site.css && jekyll


TODO:

  * Consider using feedburner vs my own alternate atom?


