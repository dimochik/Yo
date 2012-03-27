# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "yo/version"

Gem::Specification.new do |s|
  s.add_development_dependency "net/http"
  s.add_development_dependency "uir"
  s.add_development_dependency "json"
end

Gem::Specification.new do |s|
  s.name        = "yo"
  s.version     = Yo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Dmitri Korobov"]
  s.email       = ["dimochik@yahoo.com"]
  s.homepage    = ""
  s.summary     = %q{Simple wrapper to call yahoo geocoder service}
  s.description = %q{Simple wrapper to call yahoo geocoder service}

  s.rubyforge_project = "yo"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
