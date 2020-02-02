require 'capybara'
require 'capybara/dsl'
require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'touch_action'
require 'rubygems'

caps = Selenium::WebDriver::Remote::Capabilities.new

# Gets visit() to work
World(Capybara::DSL)

# Use selenium locally, uncomment this
Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, 
  browser: ENV['BROWSER'].to_sym	
end