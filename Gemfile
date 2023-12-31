# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

gem 'rails', '~> 7.0.6'

gem 'bootsnap', require: false
gem 'draper'
gem 'elasticsearch', '~> 7.17.7'
gem 'hotwire-rails'
gem 'importmap-rails'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'redis', '~> 4.0'
gem 'rest-client'
gem 'rubocop', require: false
gem 'searchkick'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'rspec-rails'
end

group :development do
  gem 'annotate'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'pry'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
