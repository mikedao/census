source 'https://rubygems.org'

ruby '2.6.6'

gem 'aws-sdk-s3'
gem "bootstrap-table-rails"
gem "paperclip", "~> 6.1.0"
gem 'active_designer'
gem 'active_model_serializers', '~> 0.10.0'
gem 'bootstrap-sass'
gem 'cancancan'
gem 'coffee-rails', '~> 4.2'
gem 'coolline'
gem 'devise'
gem 'doorkeeper'
gem 'figaro'
gem 'graphql-client'
gem 'honeybadger'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'pg', '~> 1.1'
gem 'postmark-rails'
gem 'puma', '~> 4.3'
gem 'rack-cors', require: 'rack/cors'
gem 'rails', '~> 5.2.2'
gem 'rails_12factor', group: :production
gem 'rb-readline'
gem 'sass-rails', '~> 5.0'
gem 'sprockets', '~> 3.7'
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'brakeman', :require => false
  gem 'listen', '~> 3.1.5'
  gem 'web-console'
end

group :test do
  gem 'phantomjs', :require => 'phantomjs/poltergeist'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'poltergeist'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
end

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'faker'
  gem 'launchy'
  gem 'oauth2' #used to simulate client app in testing
  gem 'pry-rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
