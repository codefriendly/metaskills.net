module Jekyll
  module Filters

    def env_deploy
      ENV['JEKYLL_DEPLOY'] == 'true'
    end
  
  end
end