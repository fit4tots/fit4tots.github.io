source 'https://rubygems.org'
ruby '2.2.0'

gem 'bundler', '>= 1.7.10'

require 'json'
require 'open-uri'
versions = JSON.parse open('https://pages.github.com/versions.json').read

gem 'github-pages', versions['github-pages']

gem 'jekyll-slim'
gem 'slim'