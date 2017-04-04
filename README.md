# Puppet Testing Workshop

DevOpsPro.lt

## System preparation

On a VM or on your local machine: install rvm or rbenv

Get used to Ruby
- gems
- irb

Make your irb better usable:

    gem install wirble

Create your .irbrc file

    require 'rubygems'
    require 'wirble'
    Wirble.init
    Wirble.colorize

## Start with styleguide checks

    gem install puppet-lint

Run lint tests

    puppet-lint <manifests file>

Check for extensions on http://voxpupuli.org

## Continue with rspec-puppet tests

    gem install rspec-puppet

Create rspec-puppet required files

    rspec-puppet-init

Modify spec/spec_helper.rb

    # spec/spec_helper.rb
    require 'rspec-puppet'
    fixture_path = File.expand_path(File.join(__FILE__,'..','fixtures'))
    RSpec.configure do |c|
      c.module_path = File.join(fixture_path, 'modules')
      c.manifest_dir = File.join(fixture_path, 'manifests')
    end

Add a first spec test in spec/classes/devopspro-vilnius_spec.rb

    # spec/classes/devopspro-vilnius_spec.rb
    require 'spec_helper'
    describe 'devopspro-vilnius', :type => :class do
      context 'it should compile' do
        it { should compile.with_all_deps }
      end
    end

Run rspec:

    rake rspec

Analyze and fix errors

## Working in a seaprate installation directory

Don't mess your ruby !!

Uninstall all prior installed gems:

    gem uninstall puppet-lint rspec-puppet

Install bundler

    gem install bundler

Install gems

    bundle install --path vendor

Adopt Rakefile

    # Rakefile
    require 'puppetlabs_spec_helper/rake_tasks'

Run rake -T with bundler

    bundle exec rake -T
    bundle exec rake spec

## Beaker

Install beaker

    bundle install --path vendor --with-integration

Run beaker integration tests

    bundle exec rake beaker

Add tests in spec/acceptance/devopspro-vilnius_spec.rb

    # spec/acceptance/devopspro-vilnius_spec.rb

## Retrospec

Install retrospec

    gem install puppet-retrospec

Get a module without tests (e.g. remove spec folder, Rakefile, Gemfile, .fixtures.yml from this repo

Run retrospec

    retrospec -m <modulepath>

Check results

Done.


