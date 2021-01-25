# iLAB

1. Create a file 
2. Run ```cucumber -- init```
3. Download selenium webdriver 
4. On your environment file here ``support/env.rb`` add the following:
  1.``require 'selenium/webdriver' ``
  and add
  ```` 
  Before do
       	wait = Selenium::WebDriver::Wait.new(timeout: 60)
       	$web_driver = Selenium::WebDriver.for :firefox
       	# $web_driver = Selenium::WebDriver.for :chrome
       	$web_driver.get 'https://www.ilabquality.com/'
       	Selenium::WebDriver::Wait.new(timeout: 10)
       	$web_driver.manage.timeouts.implicit_wait = 10
       	$web_driver.manage.timeouts.page_load = 90
       	$web_driver.manage.window.maximize
       end
````
This is calling your chrome and firefox driver. In addition your url.

## Methods file 

The ``Methods`` file I use for creating methods that come handy so that the steps file is clean. 
Create a methods file and add the path to it on the ``env.rb`` file as follows:

`` 
require_relative '../../features/Methods/MethodsWarehouse.rb'
``
``
include MethodsWarehouse
``

## ElementsWarehouse

The ``Warehouse`` is for collecting all elements so that I do not rewrite the elements since rewriting might take a while. You can create the file too.

The best IDE I use for now is Rubymine because it makes running your tests and debugging easy. 

``
Designed by Sibabalwe Mvelo 
Email: mvsiba@gmail.com
Cell: +27 66 264 2196 
``

