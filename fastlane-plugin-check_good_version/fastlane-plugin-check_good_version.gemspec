# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/check_good_version/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-check_good_version'
  spec.version       = Fastlane::CheckGoodVersion::VERSION
  spec.author        = %q{Lyndsey Ferguson}
  spec.email         = %q{lyndsey.ferguson@appian.com}

  spec.summary       = %q{Checks the version of the installed Good framework}
  spec.homepage      = "https://github.com/lyndsey-ferguson/fastlane_plugins"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'nokogiri'
  spec.add_dependency 'httparty'
  spec.add_dependency 'pry'
  spec.add_dependency 'mechanize'
  spec.add_dependency 'ruby-saml', '~> 1.0.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 1.99.0'
end
