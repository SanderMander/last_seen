$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "last_seen/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "last_seen"
  s.version     = LastSeen::VERSION
  s.authors     = ["Aleksandr Korotkikh"]
  s.email       = ["koralvas@gmail.com"]
  s.homepage    = ""
  s.summary     = "Last seen example engine"
  s.description = "Last seen example engine"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"
  s.add_dependency "warden", "~> 1.2.3"

  s.add_development_dependency "sqlite3"
end
