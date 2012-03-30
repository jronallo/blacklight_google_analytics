require 'test_helper'
require 'generators/blacklight_google_analytics_generator'

class GeneratorTest < Rails::Generators::TestCase
  tests BlacklightGoogleAnalyticsGenerator  
  setup :prepare_destination
  destination File.join(Rails.root, 'tmp')
    
  test "Assert initializer created" do    
    run_generator
    assert_file "config/initializers/blacklight_google_analytics.rb", /BlacklightGoogleAnalytics.web_property_id/
  end
  
  test "Assert contents of application.js" do    
    run_generator
    assert_file "app/assets/javascripts/application.js", /\/\/= require blacklight_google_analytics/
    assert_file "app/assets/javascripts/application.js", /\/\/= require google_analytics/
  end
  
end