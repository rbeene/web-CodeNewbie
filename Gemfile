source 'https://rubygems.org'


ruby '2.1.3'

###################
# Suspenders Gems #
###################

# gem 'bourbon'
gem 'coffee-rails'  
gem 'delayed_job_active_record', '>= 4.0.0'
gem 'email_validator'
gem 'flutie'
gem 'high_voltage'
gem 'jquery-rails'
gem 'pg'
gem 'rack-timeout'
gem 'rails', '>= 4.0.3'
gem 'recipient_interceptor'
gem 'sass-rails'
gem 'simple_form'
gem 'title'
gem 'uglifier'
gem 'unicorn'
gem 'whenever', require: false

###############
# Custom Gems #
###############

gem 'acts-as-taggable-on', '~> 3.1'
gem 'chronic'
gem 'figaro'
gem 'friendly_id', '~> 5.0.0'
gem 'foundation-rails'
gem 'sprockets', '<= 2.11.0'
gem 'twitter'
gem 'devise'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'travis'
gem 'mandrill-api'

##############
# Group Gems #
##############

group :development do
  gem 'foreman'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'awesome_print'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'jazz_hands', github: 'nixme/jazz_hands', branch: 'bring-your-own-debugger'
  gem 'pry-byebug'
  gem 'rspec-rails', '>= 2.14'
end

group :test do
  gem 'capybara-webkit', '>= 1.0.0'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

group :staging, :production do
  gem 'newrelic_rpm', '>= 3.7.3'
end
