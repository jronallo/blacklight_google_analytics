class BlacklightGoogleAnalyticsGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)
  
  desc "Blacklight Google Analytics Generator"    
  
  def create_blacklight_google_analytics_initializer
    initializer "blacklight_google_analytics.rb" do
<<EOF
# Change to your Google Web id 
BlacklightGoogleAnalytics.web_property_id = case Rails.env.to_s
when 'development'
  nil
when 'test'
  nil
else
  'UA-XXXXX-X'
end      
EOF
    end
  end
  
  def add_javascripts_to_applicationjs  
    application_js_file = 'app/assets/javascripts/application.js'
    application_js = File.binread application_js_file
    insert_line = "\n//= require blacklight_google_analytics"
    if application_js.include?(insert_line)
      say_status("skipped", "add blacklight_google_analytics to #{application_js_file}", :yellow)
    else
      append_to_file application_js_file, insert_line 
    end         
  end
  
  def add_google_analytics_javascript_via_controller_extra_head
    catalog_controller_file = 'app/controllers/catalog_controller.rb'
    catalog_controller = File.binread catalog_controller_file
    insert_line = "\n  include BlacklightGoogleAnalytics::ControllerExtraHead\n"
    if catalog_controller.include?(insert_line)
      say_status("skipped", "add google analytics javascript via controller extra head", :yellow)
    else
      insert_into_file catalog_controller_file, insert_line, 
        :after => 'class CatalogController < ApplicationController'
    end    
  end
  
  def show_readme      
    say_status("todo", "Edit `config/initializers/blacklight_google_analytics.rb` to include your own Google Web id.", :red)
  end
end
