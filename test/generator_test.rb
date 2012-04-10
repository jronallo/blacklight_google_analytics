require 'test_helper'
require 'generators/blacklight_google_analytics_generator'

class GeneratorTest < Rails::Generators::TestCase
  tests BlacklightGoogleAnalyticsGenerator  
  destination File.join(Rails.root, 'tmp')
  setup :prepare_destination
  
    
  test "Assert initializer created" do    
    run_generator
    assert_file "config/initializers/blacklight_google_analytics.rb", /BlacklightGoogleAnalytics.web_property_id/
  end
  
  # test "Assert contents of application.js" do    
  #   run_generator
  #   assert_file "app/assets/javascripts/application.js", /\/\/= require blacklight_google_analytics/    
  # end
  # 
  # test "Assert contents of catalog_controller.rb" do
  #   run_generator
  #   assert_file "app/controllers/catalog_controller.rb", 'include BlacklightGoogleAnalytics::ControllerExtraHead'
  # end 
  
end