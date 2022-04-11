require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require_relative 'page_helper'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World Page

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
        'goog:chromeOptions' => {
          'args' => [
            '--start-maximized'
          ]
        }
      )
    )
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 10
    config.app_host = 'https://hportal.webmotors.com.br/'
end