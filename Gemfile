source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.7"
gem "rails", "~> 7.0.8"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem 'rack-cors'
gem 'graphql'
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem 'graphiql-rails'
  gem 'faker'
end

