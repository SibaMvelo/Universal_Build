module MethodsWarehouse
	def scroll_to(element)
		$web_driver.execute_script("arguments[0].scrollIntoView();",element)
	end
end