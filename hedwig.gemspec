# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hedwig/version'

Gem::Specification.new do |spec|
  spec.name          = "hedwig"
  spec.version       = Hedwig::VERSION
  spec.authors       = ["Jared Hoyt"]
  spec.email         = ["jaredhoyt@gmail.com"]
  spec.summary       = %q{TripAdvisor API wrapper}
  spec.description   = %q{Hedwig is an API wrapper for TripAdvisor's Content API.}
  spec.homepage      = "http://github.com/jaredhoyt/hedwig"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "addressable", "~> 2.5"
  spec.add_runtime_dependency "faraday", "~> 0.12.0"
  spec.add_runtime_dependency "faraday_middleware", "~> 0.13.0"
  spec.add_runtime_dependency "virtus", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.4"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.8"
  spec.add_development_dependency "pry", "~> 0.11"
  spec.add_development_dependency "rubocop", "~> 0.58"
  spec.add_development_dependency "simplecov", "~> 0.17"
  spec.add_development_dependency "vcr", "~> 2.9"
  spec.add_development_dependency "webmock", "~> 3.5"
end
