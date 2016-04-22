source 'https://rubygems.org'

gem 'rails', '4.2.2'
gem 'metova'

gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'

gem 'capistrano', '~> 3.0', require: false
gem 'capistrano-rbenv', '~> 2.0'
gem 'capistrano-rails', '~> 1.1', require: false
gem 'capistrano-bundler', '~> 1.1', require: false
gem 'capistrano3-unicorn', require: false
gem 'elbas'
gem 'aws-sdk'

gem 'aws-healthcheck'
gem 'capistrano-sidekiq'
gem "paperclip", "~> 5.0.0.beta1"
gem 'connection_pool'
gem 'devise'
gem 'devise-async'
gem 'enumerize'
gem 'faker'
gem 'figaro'
gem 'font-awesome-rails'
gem 'kaminari'
gem 'mini_magick'
gem 'multi_json'
gem 'puma'
gem 'pundit'
gem 'redis'
gem 'responders'
gem 'sidekiq'
gem 'sidekiq-failures', github: 'mhfs/sidekiq-failures'
gem 'simple_form'
gem 'sinatra', require: nil
gem 'spring', group: :development
gem 'slim'
gem 'unicorn'
gem 'yajl-ruby', require: 'yajl'
gem 'yarjuf'
gem 'render_anywhere', require: false

gem 'bourbon', '~> 4.2'
gem 'neat', '~> 1.7'
gem 'bitters', '~> 1.2'

## Memcached
# gem 'dalli'
# gem 'dalli-elasticache'

group :production do
  gem 'newrelic_rpm'
  gem 'rails_12factor'
end

group :staging, :production do
  gem 'pg'
  gem 'metova-logger'
end

group :test do
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'capybara-screenshot'
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'rspec-sidekiq'
  gem 'shoulda-matchers', require: false
  gem 'simplecov', require: false
  gem 'webmock'
  gem 'webmock-rspec-helper'
end

group :development, :test do
  gem 'pry'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'fabrication'
  gem 'launchy'
  gem 'quiet_assets'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'rspec-rails'
  gem 'timecop'
end
