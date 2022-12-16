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
gem 'byebug'
gem 'pg', '~> 0.18'
gem 'activerecord'
gem 'bcrypt', '~> 3.1.13'
# gem 'simple_form'
gem 'simple_form', '~> 3.2', '>= 3.2.1'
gem 'mongoid-history', git: 'https://github.com/mongoid/mongoid-history.git'
gem 'mimemagic', github: 'mimemagicrb/mimemagic', ref: '01f92d86d15d85cfd0f20dabd025dcbd36a8a60f'
# Use jquery as the JavaScript library
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'bootstrap-sass', '~> 3.2.0'
# gem 'twitter-typeahead-rails'
gem 'twitter-typeahead-rails', :git => "https://github.com/yourabi/twitter-typeahead-rails.git"
# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development
gem 'jquery-ui-rails'
gem 'imgkit'
gem "jquery-rails"
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
# gem 'jquery-raty-rails', github: 'bmc/jquery-raty-rails' # Bleeding edge
gem 'jquery-datatables-rails', git: 'https://github.com/rweng/jquery-datatables-rails.git'
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
