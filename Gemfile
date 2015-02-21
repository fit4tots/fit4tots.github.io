source 'https://rubygems.org'

require 'json'
require 'open-uri'
versions = JSON.parse open('https://pages.github.com/versions.json').read
# puts versions.inspect
ruby versions['ruby']

gem 'bundler', '~> 1.8.0'

gem 'github-pages', versions['github-pages']

gem 'bourbon'
gem 'uglifier'

gem 'haml'
gem 'guard-haml'
gem 'rake'