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

