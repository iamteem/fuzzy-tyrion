# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fuzzy_tyrion/version'

Gem::Specification.new do |spec|
  spec.name          = "fuzzy_tyrion"
  spec.version       = FuzzyTyrion::VERSION
  spec.authors       = ["Tim Medina"]
  spec.email         = ["iamteem@gmail.com"]
  spec.summary       = %q{This is a demo thing.}
  spec.description   = %q{This is a demo for the osom guys here.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
