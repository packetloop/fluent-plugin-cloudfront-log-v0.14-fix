# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-cloudfront-log-v0.14-fix"
  spec.version       = "0.1.1"
  spec.authors       = ["lenfree"]
  spec.email         = ["lenfree.yeung@gmail.com"]

  spec.summary       = %q{AWS CloudFront log input plugin with temporary fix for v0.14. Credit to kubihie.}
  spec.description   = %q{AWS CloudFront log input plugin for fluentd. This repo is temporary until PR to upstream is addressed.}
  spec.homepage      = "https://github.com/packetloop/fluent-plugin-cloudfront-log-v0.14-fix"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "fluentd", ">= 0.14.0", "< 2"
  spec.add_dependency "aws-sdk-s3", "~> 1"
  spec.add_dependency "aws-sdk-sqs", "~> 1"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 12"
  spec.add_development_dependency 'test-unit', "~> 2"
end
