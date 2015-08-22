$:.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bold-theme-casper"
  s.version     = '1.0.0'
  s.authors     = ["Jens Kraemer"]
  s.email       = ["jk@jkraemer.net"]
  s.homepage    = "https://github.com/bold-app/bold-theme-casper"
  s.summary     = "The Casper theme for Bold."
  s.description = "This is a port of Ghost's default theme for the Bold blogging engine."
  s.license     = "GPL v3"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]
end
