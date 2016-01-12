source 'https://rubygems.org'

# the rails gem for pagiantion
gem 'will_paginate', '~> 3.0.7'
#rails gem which wraps the beautiful Font Awesome icons library
gem 'font-awesome-rails', '~> 4.2.0.0'

gem 'angularjs-file-upload-rails', '~> 1.1.6'

gem 'carrierwave'

gem 'newrelic_rpm'
#gem 'rmagick'
gem 'angularjs-rails', '~> 1.2.22'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

#added for windows users
gem 'tzinfo-data', platforms: [:x64_mingw,:mingw, :mswin]

gem 'haml-rails'
gem 'coffee-rails'
gem 'devise'       # authentification
gem 'angular-rails-templates'
gem 'angular_rails_csrf'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'spring-commands-rspec'
  gem 'rspec-rails'
  gem 'guard-rspec'
  #add factory_girl_rails as a fixtures replacement 
  gem "factory_girl_rails"
  #RSpec formatter
  gem 'fuubar'
  #for cleaning database 
  gem 'database_cleaner'
  # library that generates fake data.
  gem 'faker', '~> 1.4.3'
  gem 'rb-fsevent' , :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-livereload'
  gem 'wdm', '>= 0.1.0'
  gem 'teaspoon'
   gem 'guard-teaspoon'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
