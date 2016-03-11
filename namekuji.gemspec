$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "namekuji/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "namekuji"
  s.version     = Namekuji::VERSION
  s.authors     = ["Jesse B. Hannah"]
  s.email       = ["jesse@jbhannah.net"]
  s.homepage    = "https://github.com/thetallgrassnet/namekuji"
  s.summary     = "ORM-agnostic slug generator for Rails."
  s.description = "Include Namekuji in your Rails models to give them friendly slug generation, regardless of your ORM."
  s.license     = "Apache-2.0"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
