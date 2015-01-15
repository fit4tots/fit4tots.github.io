source 'https://rubygems.org'

require 'json'
require 'open-uri'
versions = JSON.parse open('https://pages.github.com/versions.json').read

ruby versions['ruby']

gem 'bundler', '>= 1.7.12'

gem 'github-pages', versions['github-pages']
