#!/usr/bin/env ruby

OLD_PERMALINKS_TO_NEW_URLS = [
  ["/2010/8/19/how-to-clean-a-campfire-room-of-uploads", "/2010/08/19/how-to-clean-a-campfire-room-of-uploads/"],
  ["/2010/8/6/protip-exclude-your-rvm-install-from-timemachine-backups", "/2010/08/06/protip-exclude-your-rvm-install-from-timemachine-backups/"],
  ["/2010/7/30/the-rvm-ruby-api", "/2010/07/30/the-rvm-ruby-api/"],
  ["/2010/7/19/a-macport-rubyodbc-update", "/2010/07/19/a-macport-rubyodbc-update/"],
  ["/2010/7/9/interactive-javascript-console-with-textmate", "/2010/07/09/interactive-javascript-console-with-textmate/"],
  ["/2010/7/7/bit-fat-legacy-schema-inspection", "/2010/07/07/bit-fat-legacy-schema-inspection/"],
  ["/2010/7/6/custom-webrat-session-formatted_error-for-rails-with-nokogiri", "/2010/07/06/custom-webrat-session-formatted_error-for-rails-with-nokogiri/"],
  ["/2010/5/26/the-alias_method_chain-of-rake-override-rake-task", "/2010/05/26/the-alias_method_chain-of-rake-override-rake-task/"],
  ["/2010/4/13/restful-ajax-with-forgery-protection-with-rails-3", "/2010/04/13/restful-ajax-with-forgery-protection-with-rails-3/"],
  ["/2010/3/19/textmate-theme-key-bindings-for-xcode", "/2010/03/19/textmate-theme-key-bindings-for-xcode/"],
  ["/2010/2/23/git-init-xcode-projects", "/2010/02/23/git-init-xcode-projects/"],
  ["/2010/2/12/synchronizing-core-data-with-rails-3-0-0-pre", "/2010/02/12/synchronizing-core-data-with-rails-3-0-0-pre/"],
  ["/2010/2/6/simple-script-console-function", "/2010/02/06/simple-script-console-function/"],
  ["/2010/1/29/unobtrusive-js-in-rails-3-with-prototype", "/2010/01/29/unobtrusive-js-in-rails-3-with-prototype/"],
  ["/2010/1/25/quickie-js-prototype-wrapper-for-quicktime", "/2010/01/25/quickie-js-prototype-wrapper-for-quicktime/"],
  ["/2010/1/5/rails-button-links-in-embedded-forms", "/2010/01/05/rails-button-links-in-embedded-forms/"],
  ["/2009/10/4/757-studio", "/2009/10/04/757-studio/"],
  ["/2009/9/21/perform-occupational-maintenance", "/2009/09/21/perform-occupational-maintenance/"],
  ["/2009/9/5/the-ultimate-os-x-snow-leopard-stack-for-rails-development-x86_64-macports-ruby-1-8-1-9-sql-server-more", "/2009/09/05/the-ultimate-os-x-snow-leopard-stack-for-rails-development-x86_64-macports-ruby-1-8-1-9-sql-server-more/"],
  ["/2009/8/18/visor-terminal-on-snow-leopard", "/2009/08/18/visor-terminal-on-snow-leopard/"],
  ["/2009/7/18/757rb-memcached-talk", "/2009/07/18/757rb-memcached-talk/"],
  ["/2009/5/14/pdf-writer-for-ruby-1-9", "/2009/05/14/pdf-writer-for-ruby-1-9/"],
  ["/2009/3/10/learning-objective-c-iphone-development", "/2009/03/10/learning-objective-c-iphone-development/"],
  ["/2009/2/1/git-subversion-user-commit-reports", "/2009/02/01/git-subversion-user-commit-reports/"],
  ["/2009/1/20/multiruby-the-macports-way-testing-your-rails-apps-with-ruby-1-9", "/2009/01/20/multiruby-the-macports-way-testing-your-rails-apps-with-ruby-1-9/"],
  ["/2008/9/28/jack-has_many-things", "/2008/09/28/jack-has_many-things/"],
  ["/2008/9/19/using-autotest-for-rails-plugin-development", "/2008/09/19/using-autotest-for-rails-plugin-development/"],
  ["/2008/9/14/going-horizontal-on-the-multicade", "/2008/09/14/going-horizontal-on-the-multicade/"],
  ["/2008/8/18/in-hell-oo-for-homemarks", "/2008/08/18/in-hell-oo-for-homemarks/"],
  ["/2008/7/6/stop-exception-notifications-with-the-zombieshotgun", "/2008/07/06/stop-exception-notifications-with-the-zombieshotgun/"],
  ["/2008/6/18/restful-ajax-with-forgery-protection", "/2008/06/18/restful-ajax-with-forgery-protection/"],
  ["/2008/5/30/coulda-shoulda-woulda", "/2008/05/30/coulda-shoulda-woulda/"],
  ["/2008/5/24/the-ajax-head-br-design-pattern", "/2008/05/24/the-ajax-head-design-pattern/"],
  ["/2008/4/25/using-rubyamp-textmate-bundle-with-opt-ruby", "/2008/04/25/using-rubyamp-textmate-bundle-with-opt-ruby/"],
  ["/2008/4/22/how-to-use-passenger-mod_rails-with-rails-edge-2-1", "/2008/04/22/how-to-use-passenger-mod_rails-with-rails-edge-2-1/"],
  ["/2008/4/13/now-on-passenger-mod_rails", "/2008/04/13/now-on-passenger-mod_rails/"],
  ["/2008/4/6/autotest-playlist-for-red-green-feedback", "/2008/04/06/autotest-playlist-for-red-green-feedback/"],
  ["/2008/4/6/autotest-infinite-loop-on-failure-error", "/2008/04/06/autotest-infinite-loop-on-failure-error/"],
  ["/2008/4/3/how-to-stop-delivery-of-an-email-within-an-actionmailer-method", "/2008/04/03/how-to-stop-delivery-of-an-email-within-an-actionmailer-method/"],
  ["/2008/4/3/macbook-with-4gb-of-memory", "/2008/04/03/macbook-with-4gb-of-memory/"],
  ["/2008/3/26/don-t-be-a-plinko-programmer", "/2008/03/26/don-t-be-a-plinko-programmer/"],
  ["/2008/3/22/metaskills-net-reborn-on-mephisto", "/2008/03/22/metaskills-net-reborn-on-mephisto/"],
  ["/2007/1/31/rake-task-to-read-and-write-the-activerecord-schema-version-table", "/2007/01/31/rake-task-to-read-and-write-the-activerecord-schema-version-table/"],
  ["/2006/10/2/custom-rake-task-to-unload-fixtures", "/2006/10/02/custom-rake-task-to-unload-fixtures/"],
  ["/2006/6/30/flying-light-configuring-drupal-and-lighttpd", "/2006/06/30/flying-light-configuring-drupal-and-lighttpd/"],
  ["/2006/6/13/quake-style-terminal-window-on-os-x", "/2006/06/13/quake-style-terminal-window-on-os-x/"],
  ["/2006/6/6/back-in-black", "/2006/06/06/back-in-black/"],
  ["/2006/5/29/my-own-soup-to-nuts-recipe-for-ruby-on-rails-on-os-x", "/2006/05/29/my-own-soup-to-nuts-recipe-for-ruby-on-rails-on-os-x/"],
  ["/2006/5/19/pragmatic-studio-alumni-member", "/2006/05/19/pragmatic-studio-alumni-member/"],
  ["/2006/3/19/getting-on-good-terms-with-the-os-x-shell", "/2006/03/19/getting-on-good-terms-with-the-os-x-shell/"],
  ["/2006/3/5/learn-to-program-in-ruby-and-basic-sql", "/2006/03/05/learn-to-program-in-ruby-and-basic-sql/"],
  ["/2006/3/2/if-microsoft-designed-the-ipod-packaging", "/2006/03/02/if-microsoft-designed-the-ipod-packaging/"],
  ["/2006/2/24/shell-script-to-delete-all-invisible-_-resource-files", "/2006/02/24/shell-script-to-delete-all-invisible-_-resource-files/"],
  ["/2006/2/19/how-to-control-browser-caching-with-apache-2", "/2006/02/19/how-to-control-browser-caching-with-apache-2/"],
  ["/2006/2/16/a-review-of-digg-com-traffic-and-cdns", "/2006/02/16/a-review-of-digg-com-traffic-and-cdns/"],
  ["/2006/2/5/mini-network-with-a-big-xserve-style", "/2006/02/05/mini-network-with-a-big-xserve-style/"],
  ["/2006/1/28/cooking-with-drupal", "/2006/01/28/cooking-with-drupal/"],
  ["/2006/1/11/the-best-font-for-mac-programmers-profont", "/2006/01/11/the-best-font-for-mac-programmers-profont/"]
]


OLD_PERMALINKS_TO_NEW_URLS.each do |data|
  permalink, new_url = data
  filename = "#{permalink.gsub('/','')}_redirect.html"
  front_matter = %|--- 
layout: redirect
permalink: #{permalink}
new_url: #{new_url}

---|
  File.open("_posts/#{filename}",'w') { |f| f.write(front_matter) }
end







