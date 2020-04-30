# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'automatiek/version'

Gem::Specification.new do |spec|
  spec.name          = "automatiek"
  spec.version       = Automatiek::VERSION
  spec.authors       = ["Samuel E. Giddins"]
  spec.email         = ["segiddins@segiddins.me"]

  spec.summary       = "Vendor your gem's dependencies in retro style."
  spec.homepage      = "https://github.com/segiddins/automatiek"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3.0"

  spec.add_development_dependency "rake", ">= 10.0", "< 12.0"
  spec.add_development_dependency "rspec"
end
