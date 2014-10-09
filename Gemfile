source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Use ActiveModel has_secure_password
#gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]

gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'

# file upload
gem 'carrierwave'

# user authtication
gem 'devise'

gem 'jcrop-rails-v2'

# The RMagick library provides the same interface against ImageMagick and GraphicsMagick
gem 'mini_magick'

# amazon ruby sdk
#gem 'aws-sdk' 

group :production do
    # amazon elastic beanstalk
    #gem "nokogiri"
    #gem "puma"

    # amazon mysql
    #gem 'mysql2'
end

group :development do
  gem "better_errors"
end

# Use Unicorn
platforms :ruby do gem 'unicorn' end
# Use PostgreSQL
gem 'pg', group: :production

group :development do
  # Use Capistrano for deployment
  gem 'capistrano', '~> 3.1'
  gem 'capistrano-rails', '~> 1.1.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rbenv', '~> 2.0'
  gem 'capistrano-unicorn-nginx', '~> 2.0'
  gem 'capistrano-postgresql', '~> 3.0'
end