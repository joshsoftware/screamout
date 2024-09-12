source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
gem 'mongoid', github:'mongoid/mongoid'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer',  platforms: :ruby
gem 'devise'
gem 'omniauth-google-oauth2'
gem 'omniauth'
gem 'simple_form'
gem 'mimemagic', github: 'mimemagicrb/mimemagic', ref: '01f92d86d15d85cfd0f20dabd025dcbd36a8a60f'
# Use jquery as the JavaScript library
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'twitter-typeahead-rails'
gem 'imgkit'
gem "jquery-rails"
gem 'pg', '~> 0.18'
gem 'activerecord'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'execjs'		#for executing javascript from ruby

group :development, :test do  #overrite existing..generate spec directory,,include the gem in multiple rails env
		#gem 'debugger'
		gem 'rspec-rails' , '2.14.2'
		gem 'factory_girl_rails'
		gem 'faker'
		gem 'database_cleaner'
		gem 'simplecov', '~> 0.7.1'
		gem 'guard-rspec', require: false
end
gem 'mongoid-rspec'		#tests beginning with 'should'
gem 'mongoid_taggable'
gem 'mongoid_rateable', :git => 'git://github.com/PerfectMemory/mongoid_rateable.git'
gem "bson"
gem 'sidekiq'
gem 'sinatra', require: false
gem 'slim'

gem 'redis-rails'
gem 'redis-namespace'
gem "mongoid-paperclip", :require => "mongoid_paperclip"

gem 'haml'
gem 'haml-rails'
gem 'pry'

group :test do
  gem 'rspec-rails', '2.14.2'
  gem 'mongoid-rspec'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'simplecov', '~> 0.7.1'
  gem 'faker'
end
