source 'https://rubygems.org'
ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '6.0'
gem 'bootsnap'
gem 'puma'

gem 'webpacker'

gem 'pg', '0.18.1', group: :production
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.3'
gem "autoprefixer-rails"

gem 'rails_12factor', group: :production
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'haml'
gem "erb2haml", :group => :development

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]

gem 'wdm', '>= 0.1.0' if RbConfig::CONFIG['target_os'] =~ /mswin|mingw/i

group :development do
  gem 'listen'
end

group :test, :development do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.4'
end

require 'rbconfig' 