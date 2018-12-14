$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "closer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "closer"
  s.version     = Closer::VERSION
  s.authors     = ["CLOSER"]
  s.email       = ["closer@ucl.ac.uk"]
  s.homepage    = "http://www.closer.ac.uk"
  s.summary     = "CLOSER is a ESRC and MRC funded consortium of UK institutions and 8 cohort longitudinal studies."
  s.description = "CLOSER aims to maximise their use, value and impact both at home and abroad."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 5.0.7.1"

  s.add_development_dependency "sqlite3"
end
