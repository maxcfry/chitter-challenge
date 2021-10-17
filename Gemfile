source 'https://rubygems.org'

ruby '3.0.2'

gem 'sinatra'
gem 'sinatra-contrib'
gem 'sinatra-flash'
gem 'pg'
gem 'webrick'
gem 'bcrypt'

group :test do
  gem 'rspec'
  gem 'cucumber'
  gem 'rubocop-rspec'
  gem 'coveralls', require: false
  gem 'capybara'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

group :development, :test do
  gem 'rubocop', '1.20'
end
