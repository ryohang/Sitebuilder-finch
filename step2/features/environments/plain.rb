#require 'capybara/celerity'
Capybara.run_server = false
#Capybara.app_host = "http://www.webs.com"
Capybara.default_driver = :selenium
Capybara.default_selector = :xpath
Selenium::WebDriver.for :chrome

include RSpec::Matchers
