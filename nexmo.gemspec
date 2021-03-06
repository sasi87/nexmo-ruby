require File.expand_path('lib/nexmo/version', File.dirname(__FILE__))

Gem::Specification.new do |s|
  s.name = 'nexmo'
  s.version = Nexmo::VERSION
  s.license = 'MIT'
  s.platform = Gem::Platform::RUBY
  s.authors = ['Tim Craft']
  s.email = ['mail@timcraft.com']
  s.homepage = 'https://github.com/Nexmo/nexmo-ruby'
  s.description = 'Nexmo Client Library for Ruby'
  s.summary = 'This is the Ruby client library for Nexmo\'s API. To use it you\'ll need a Nexmo account. Sign up for free at https://www.nexmo.com'
  s.files = Dir.glob('{lib,spec}/**/*') + %w(LICENSE.txt README.md nexmo.gemspec)
  s.required_ruby_version = '>= 1.9.3'
  s.add_dependency('jwt')
  s.add_development_dependency('rake', '~> 11.0')
  s.add_development_dependency('minitest', '~> 5.0')

  if RUBY_VERSION == '1.9.3'
    s.add_development_dependency('addressable', '< 2.5.0')
    s.add_development_dependency('webmock', '~> 1.0')
  else
    s.add_development_dependency('webmock', '~> 2.0')
  end

  s.require_path = 'lib'
end
