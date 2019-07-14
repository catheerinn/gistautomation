# Environment to start the test
require 'selenium-webdriver'
require 'rubygems'
require 'rspec'
require 'test/unit'

# Define what browser you want to use
browser = Selenium::WebDriver.for:chrome

# Define homepage_url
$homepage_url = "https://gist.github.com/"

$user_email = "email@mail.com"
$user_password = "password"
$user_name = "username"
$invalid_email = "abc@hotmail"
$invalid_password = "123456"

Before do |scenario|
	@browser = browser
	@browser.manage.window.maximize
end

at_exit do
	browser.quit
end
