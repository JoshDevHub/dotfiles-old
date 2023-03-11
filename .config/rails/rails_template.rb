# frozen_string_literal: true

require "yaml"
require "fileutils"

gem_group :development, :test do
  gem "factory_bot_rails"
  gem "rspec-rails"
  gem "rubocop"
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
end

gem_group :development do
  gem "annotate"
end

initializer "generators.rb", <<-CODE
  Rails.application.config.generators do |g|
    g.test_framework :rspec,
      fixtures:         false,
      view_specs:       false,
      helper_specs:     false,
      routing_specs:    false,
      request_specs:    false,
      controller_specs: false
  end
CODE

run "bundle install"

generate "annotate:install"
generate "rspec:install"

FileUtils.cp("#{Dir.home}/.config/rails/rubocop_config.yml", ".rubocop.yml")
FileUtils.cp(
  "#{Dir.home}/.config/rails/spec_rubocop_config.yml",
  "spec/.rubocop.yml"
)

if yes? "Will you need authentication? (y/n)"
  run "bundle add devise"
  run "bundle add responders"
  run "bundle install"

  generate "responders:install"
  generate "devise:install"
end
