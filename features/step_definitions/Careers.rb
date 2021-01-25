Given 'I am on the careers page' do
	if 	$web_driver.find_element(ElementWarehouse::Close_modal)
		  $web_driver.find_element(ElementWarehouse::Close_modal).click
	end
	$web_driver.find_element(ElementWarehouse::Careers_button).click
end

Then 'I navigate to the applications page' do
	scroll_to($web_driver.find_element(ElementWarehouse::South_Africa_link))
	$web_driver.find_element(ElementWarehouse::South_Africa_link).click
	$web_driver.find_element(ElementWarehouse::Tester_job).click
end

When 'I fill in the form' do
	scroll_to($web_driver.find_element(ElementWarehouse::Apply_online_button))
	$web_driver.find_element(ElementWarehouse::Apply_online_button).click
	scroll_t0($web_driver.find_element(ElementWarehouse::Name_field))
	$web_driver.find_element(ElementWarehouse::Name_field).send_keys('Input a first name')
	$web_driver.find_element(ElementWarehouse::Email_field).send_keys('automationAssessment@iLABQuality.com')
	$web_driver.find_element(ElementWarehouse::Phone_field).send_keys('083 568 7859')
	scroll_to($web_driver.find_element(ElementWarehouse::Send_applicaion_button))
	$web_driver.find_element(ElementWarehouse::Send_applicaion_button).click
end

Then 'I should expect an error requesting a file upload' do
	$web_driver.find_element(ElementWarehouse::Upload_file_errer_message).text
end