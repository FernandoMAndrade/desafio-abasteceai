require 'rspec'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'

Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium_chrome_headless
  config.default_max_wait_time = 10
  config.app_host = "http://automationpractice.com"
end