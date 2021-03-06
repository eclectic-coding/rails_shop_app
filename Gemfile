source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

gem "bootsnap", ">= 1.4.4", require: false
gem "devise"
gem "devise-bootstrapped", github: "king601/devise-bootstrapped", branch: "bootstrap5"
gem "faker"
gem "faraday"
gem "friendly_id"
gem "image_processing"
gem "jbuilder", "~> 2.7"
gem "name_of_person"
gem "pay", "~> 2.0"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.3"
gem "sass-rails", ">= 6"
gem "stripe", "< 6.0", ">= 2.8"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 5.0"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "standard", require: false
  gem "rspec-rails", "~> 5.0", ">= 5.0.1"
  gem "factory_bot_rails"
end

group :development do
  gem "awesome_print"
  gem "erb_lint", require: false
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "spring"
  gem "web-console", ">= 4.1.0"
  # ===== App specific gems ================
  gem "fuubar"
  gem "guard"
  gem "guard-rspec"
  gem "guard-livereload", "~> 2.5", require: false
  gem "rubocop"
  gem "rubocop-rails", require: false
  gem "rubocop-rspec"
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver", "~> 4.0.0.beta1"
  gem "webdrivers"
  gem "simplecov", require: false
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
