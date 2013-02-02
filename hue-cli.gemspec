# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "hue-cli"
  s.version     = '0.1.0'
  s.authors     = ["Birkir A. Barkarson", ""]
  s.email       = ["birkirb@stoicviking.net"]
  s.homepage    = "https://github.com/birkirb/hue-lib"
  s.summary     = %q{Command line interface for controlling Phillips Hue light bridge.}
  s.description = s.summary

  s.rubyforge_project = "hue-cli"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency("json")
  s.add_runtime_dependency("hue-lib")
  s.add_development_dependency("rspec", '>= 2.6.0')
  s.add_development_dependency("mocha", '>= 0.9.0')
  s.add_development_dependency("webmock", '>= 1.8.0')
end
