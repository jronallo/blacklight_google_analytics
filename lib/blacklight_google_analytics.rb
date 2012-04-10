require 'blacklight_google_analytics/version'
require 'blacklight_google_analytics/controller_extra_head'

module BlacklightGoogleAnalytics
  
  mattr_accessor :web_property_id
  
  class Engine < Rails::Engine
    
  end
  
end
