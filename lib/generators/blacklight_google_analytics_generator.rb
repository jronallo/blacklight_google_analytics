class BlacklightGoogleAnalyticsGenerator < Rails::Generators::Base
  desc "Adds required initializer file"
  def create_blacklight_google_analytics_file
    initializer "blacklight_google_analytics.rb", 
      "# Change to your Google Web id \nBlacklightGoogleAnalytics.web_property_id = 'UA-XXXXX-X'"
      
    append_to_file 'app/assets/javascripts/application.js',
      "\n//= require blacklight_google_analytics\n//= require google_analytics"
      
    puts "You should now edit config/initializers/blacklight_google_analytics.rb to include your \
own Google Web id."
  end
end