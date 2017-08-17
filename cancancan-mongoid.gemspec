# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cancancan/mongoid/version'

Gem::Specification.new do |spec|
  spec.name          = 'cancancan-mongoid'
  spec.version       = CanCanCan::Mongoid::VERSION
  spec.authors       = ['Alessandro Rodi']
  spec.email         = ['coorasse@gmail.com']
  spec.homepage      = 'https://github.com/CanCanCommunity/cancancan-mongoid'
  spec.summary       = 'Mongoid database adapter for CanCanCan.'
  spec.description   = "Implements CanCanCan's rule-based record fetching using Mongoid."
  spec.platform      = Gem::Platform::RUBY
  spec.license       = 'MIT'

  spec.files         = `git ls-files lib init.rb cancancan-mongoid.gemspec`.split($INPUT_RECORD_SEPARATOR)
  spec.require_paths = ['lib']

  spec.add_dependency 'cancancan', '~> 2.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 10.1'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'rubocop', '~> 0.48.1'
  spec.add_development_dependency 'simplecov', '~> 0.12'
  spec.add_development_dependency 'coveralls', '~> 0.8'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 1.0'
  spec.add_development_dependency 'mongoid', '~> 3.0'
  spec.add_development_dependency 'appraisal', '~> 2.0'
end
