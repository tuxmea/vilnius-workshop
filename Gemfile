source 'https://rubygems.org'

gem 'rspec-puppet'
gem 'puppetlabs_spec_helper'
gem 'puppet', ENV['PUPPET_VERSION'] || '< 5'
gem 'rspec-puppet-facts'
gem 'metadata-json-lint'

group :integration do
  gem 'beaker', '< 3.0'
  gem 'beaker-rspec'
end
