# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aws/s3/version'

Gem::Specification.new do |spec|
  spec.name          = "aws-s3"
  spec.version       = AWS::S3::VERSION
  spec.authors       = ["Josh Lane"]
  spec.email         = ["me@joshualane.com"]
  spec.summary       = %q{Client library for Amazon's Simple Storage Service's REST API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "xml-simple"
  spec.add_dependency "builder"
  spec.add_dependency "mime-types"
end
