When (/^I submit the form$/) do
  sleep(1)
  find(:xpath, "//*[@type='submit']").click
end

When(/^I move slider in "([^"]*)"$/) do |element|
  sleep(1)
  find(:xpath, "//li[@data-id='#{element}']").find(:xpath, ".//input[@id='coverages__selected_lmi']").set 400000
  #find(:xpath, "//li[@data-id='#{element}']").find(:xpath, ".//input[@id='coverages__selected_lmi']")
end

When(/^I select the radio "([^"]*)"$/) do |element|
  option = find(:xpath, "//label[@for='home_order_flow_pricing_requirements_property_attributes_type_house']")
  sleep(1)
  option.click
end

When(/^I select the option/) do
  sleep(1)
  find("#home_order_flow_pricing_requirements_property_attributes_address_attributes_state").find(:xpath, 'option[8]').select_option
end

When(/^I select gender$/) do
  sleep(1)
  find("#home_order_flow_insured_person_data_insured_person_attributes_gender").find(:xpath, 'option[2]').select_option
end

When(/^I select salary$/) do
  sleep(1)
  find("#home_order_flow_insured_person_data_insured_person_attributes_salary_range").find(:xpath, 'option[3]').select_option
end

When(/^I fill my birthdate in "([^"]*)"$/) do |element|
  sleep(1)
  page.find(element).set "23041993"
  page.find(element).native.send_keys(:enter)
  sleep(1)
end

When(/^I select option containing "([^"]*)" in the autocomplete$/) do |text|
  sleep(1)
  find("#home_order_flow_insured_person_data_insured_person_attributes_nationality").find(:xpath, 'option[32]').select_option
  sleep(1)
  find("#home_order_flow_insured_person_data_insured_person_attributes_country_of_residence").find(:xpath, 'option[32]').select_option
  sleep(1)
  find(:xpath, "//span[@id='select2-home_order_flow_insured_person_data_insured_person_attributes_occupation-container']").click
  textbox = find(:xpath, "//input[@class='select2-search__field']")
  textbox.set "#{text}"
  sleep(1)
  #find(:xpath, "//li[@class='select2-results__option']").click
  page.find(:css, ".select2-results ul li", :text => text).click
end