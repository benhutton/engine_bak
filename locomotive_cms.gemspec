#!/usr/bin/env gem build
# encoding: utf-8

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'locomotive/version'

Gem::Specification.new do |s|
  s.name        = 'locomotive_cms'
  s.version     = Locomotive::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Didier Lafforgue']
  s.email       = ['did@locomotivecms.com']
  s.homepage    = 'http://www.locomotivecms.com'
  s.summary     = 'A Next Generation Sexy CMS for Rails 3'
  s.description = 'Locomotive is a next generation CMS system with sexy admin tools, liquid templating, and inline editing powered by mongodb and rails 3.2'

  s.required_rubygems_version = '>= 1.3.6'

  s.add_dependency 'rake',                            '~> 10.0.0'

  s.add_dependency 'rails',                           '~> 3.2.13'

  s.add_dependency 'devise',                          '~> 2.2.3'
  s.add_dependency 'devise-encryptable',              '~> 0.1.1'
  s.add_dependency 'cancan',                          '1.6.7'

  s.add_dependency 'mongo',                           '~> 1.7.0'
  s.add_dependency 'mongo_session_store-rails3'
  s.add_dependency 'bson_ext',                        '~> 1.7.0'
  s.add_dependency 'mongoid',                         '~> 3.0.5'
  # s.add_dependency 'locomotive-mongoid-tree',         '~> 0.6.2'
  # s.add_dependency 'locomotive-mongoid_migration'

  s.add_dependency 'custom_fields'

  s.add_dependency 'kaminari',                        '~> 0.14.1'

  s.add_dependency 'haml',                            '~> 4.0.0'
  s.add_dependency 'jquery-rails',                    '~> 2.1.4'
  s.add_dependency 'rails-backbone',                  '~> 0.7.2'
  s.add_dependency 'codemirror-rails',                '~> 2.21'
  s.add_dependency 'locomotive-tinymce-rails',        '~> 3.5.8.1'
  s.add_dependency 'locomotive-aloha-rails',          '~> 0.23.2.1'
  s.add_dependency 'flash_cookie_session',            '~> 1.1.1'

  s.add_dependency 'locomotive_liquid',               '~> 2.4.2'
  s.add_dependency 'formtastic',                      '~> 2.2.1'
  s.add_dependency 'responders',                      '~> 0.9.2'
  s.add_dependency 'cells',                           '~> 3.8.0'
  s.add_dependency 'RedCloth',                        '~> 4.2.8'
  s.add_dependency 'sanitize',                        '~> 2.0.3'
  s.add_dependency 'highline',                        '~> 1.6.2'
  s.add_dependency 'stringex',                        '~> 1.5.1'

  s.add_dependency 'carrierwave-mongoid',             '~> 0.4.0'
  s.add_dependency 'fog',                             '~> 1.9.0'
  s.add_dependency 'dragonfly',                       '~> 0.9.8'
  s.add_dependency 'rack-cache',                      '~> 1.1'
  s.add_dependency 'mimetype-fu',                     '~> 0.1.2'

  s.add_dependency 'multi_json',                      '~> 1.6.1'
  s.add_dependency 'httparty',                        '~> 0.8.1'
  s.add_dependency 'actionmailer-with-request',       '~> 0.3.0'

  s.add_dependency 'SystemTimer' if RUBY_VERSION =~ /1.8/

  s.files        = Dir[ 'Gemfile',
                        '{app}/**/*',
                        '{config}/**/*',
                        '{lib}/**/*',
                        '{public}/**/*',
                        '{vendor}/**/*']

  s.require_path = 'lib'

  s.extra_rdoc_files = [
    'LICENSE',
     'README.textile'
  ]

end
