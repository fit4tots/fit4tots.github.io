source 'https://rubygems.org'

require 'json'
require 'open-uri'
versions = JSON.parse open('https://pages.github.com/versions.json').read

ruby versions['ruby']

gem 'bundler', '>= 1.7.12'

gem 'github-pages', versions['github-pages']

gem 'bourbon', '4.1.1'
gem 'neat', '1.7.1'
gem 'bitters', '1.0.0'