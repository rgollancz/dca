require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'

RSpec.configure do |config|
  config.include Capybara::DSL
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium
  config.app_host = "https://doctorcareanywhere.com/"
end
