# frozen_string_literal: true

require 'English'
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'azericard/version'

Gem::Specification.new do |spec|
  spec.name          = 'azericard'
  spec.version       = Azericard::VERSION
  spec.authors       = ['Digitaz - DC Engineering']
  spec.email         = ['admin@digit.az']
  spec.description   = 'Provides an interface to AzeriCard online payment processing system'
  spec.summary       = 'Unoffical gem to provide a ruby interface for Azericard electronic payment system'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'typhoeus'
  spec.add_development_dependency 'debug'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake'
end
