# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-daum/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-daum"
  s.version     = Omniauth::Daum::VERSION
  s.authors     = ["Hoseong Hwang"]
  s.email       = ["thefron@wafflestudio.com"]
  s.homepage    = "https://github.com/thefron/omniauth-daum"
  s.summary     = %q{OmniAuth strategy for Daum}
  s.description = %q{OmniAuth strategy for Daum}

  s.rubyforge_project = "omniauth-daum"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'rack-test'
end
