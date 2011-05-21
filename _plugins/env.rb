module MetaSkills
  class DisqusDeveloper < Liquid::Tag
    
    DEV_STRING = 'var disqus_developer = 1;'
    
    def render(context)
      ENV['JEKYLL_DEPLOY'] == 'true' ? 'false' : 'true'
    end
    
  end
end

Liquid::Template.register_tag 'disqus_developer', MetaSkills::DisqusDeveloper
