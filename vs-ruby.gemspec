# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "virus_scanner/version"

Gem::Specification.new do |s|
  s.name          = "virus-scanner"
  s.version       = VirusScanner::VERSION
  s.authors       = ["BitZesty Ltd"]
  s.email         = ["info@bitzesty.com"]
  s.description   = "API client for virus-scanner service"
  s.summary       = "API client for virus-scanner service"
  s.homepage      = "https://github.com/bitzesty/vs-ruby"
  s.license       = "MIT"

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%q{^bin/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "faraday"
  s.add_dependency "faraday_middleware"

  s.add_development_dependency "bundler", "~> 1.3"
  s.add_development_dependency "rake"
end
