source 'http://rubygems.org'

ruby '2.6.2'

gem 'sinatra'
gem 'activerecord', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'pg'
gem 'puma'
gem 'shotgun'
gem 'pry'
gem 'bcrypt'
gem "tux"

gem 'sinatra-flash', :require => 'sinatra/flash'

group :development, :test do
  gem 'dotenv'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end
