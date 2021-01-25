require 'selenium/webdriver'
require_relative '../../features/Methods/MethodsWarehouse.rb'
include MethodsWarehouse

Before do
	wait = Selenium::WebDriver::Wait.new(timeout: 60)
# 	$web_driver = Selenium::WebDriver.for :firefox
	$web_driver = Selenium::WebDriver.for :chrome
	$web_driver.get 'https://www.ilabquality.com/'
	Selenium::WebDriver::Wait.new(timeout: 10)
	$web_driver.manage.timeouts.implicit_wait = 10
	$web_driver.manage.timeouts.page_load = 90
	$web_driver.manage.window.maximize
end
