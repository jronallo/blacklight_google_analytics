class BlacklightGoogleAnalyticsGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)
  
  desc "Blacklight Google Analytics Generator"    
  
  def create_blacklight_google_analytics_initializer
    initializer "blacklight_google_analytics.rb", 
      "# Change to your Google Web id \nBlacklightGoogleAnalytics.web_property_id = 'UA-XXXXX-X'"
  end
  
  def add_javascripts_to_applicationjs  
    application_js = 'app/assets/javascripts/application.js'
    if !File.exists? application_js
      create_file application_js
    end
    append_to_file application_js,
      "\n//= require blacklight_google_analytics\n//= require google_analytics"
  end
  
  def show_readme      
    readme "README" if behavior == :invoke
  end
end
