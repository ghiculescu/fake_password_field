# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fake_password_field/version'

Gem::Specification.new do |s|
  s.name        = 'fake_password_field'
  s.version     = FakePasswordField::VERSION
  s.date        = '2014-11-12'
  s.platform    = Gem::Platform::RUBY
  s.summary     = "fake_password_field"
  s.description = "Fix autofilling password fields in Safari. Replace password_field_tag with fake_password_field_tag, or f.password_field with f.fake_password_field."
  s.authors     = ["Alex Ghiculescu"]
  s.email       = 'alexghiculescu@gmail.com'
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "*.md"]
  s.require_path = 'lib'
  s.homepage    = 'http://rubygems.org/gems/fake_password_field'

  s.add_runtime_dependency 'actionview', '>= 4'
end