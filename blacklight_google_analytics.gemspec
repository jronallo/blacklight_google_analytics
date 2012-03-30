$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blacklight_google_analytics/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blacklight_google_analytics"
  s.version     = BlacklightGoogleAnalytics::VERSION
  s.authors     = ["Jason Ronallo"]
  s.email       = ["jronallo@gmail.com"]
  s.homepage    = "https://github.com/jronallo/blacklight_google_analytics"
  s.summary     = "Adds Google Analytics to Blacklight Rails application."
  s.description = "Adds Google Analytics to Blacklight Rails application including event tracking."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.0"

  s.add_development_dependency "sqlite3"
end
