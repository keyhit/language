source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap_form',
    git: 'https://github.com/bootstrap-ruby/bootstrap_form.git',
    branch: 'master'

gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'jbuilder', '~> 2.5'
gem 'pg', '~> 0.18'
gem 'pry'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.6'
gem 'rubocop'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'bootstrap-sass', '~> 3.3.7'
  # gem 'bootstrap', '~> 4.0.0'
  gem 'byebug', platform: :mri
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'factory_bot'
  gem 'factory_bot_rails'
  gem 'flag-icons-rails'
  gem 'haml-rails', '~> 1.0'
  gem 'jquery-rails'
  gem 'rails-controller-testing'
  gem 'rails-ujs'
  gem 'rspec'
  gem 'rspec-rails', '~> 3.7'
  gem 'rubocop-rspec'
  gem 'sass-rails', '>= 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sprockets-rails', require: 'sprockets/railtie'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
