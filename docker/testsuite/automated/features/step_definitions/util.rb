Given(/^I am on the home page$/) do
  puts visit "http://youse.com.br"
end

Then(/^I should see "([^"]*)"$/) do |text|
  page.should have_content text
end

When (/^I submit the form$/) do
  sleep(1)
  find(:xpath, "//*[@type='submit']").click
end

When(/^I press "([^"]*)"$/) do |element|
  click_on element
end

Given(/^I am logged in$/) do
  find(:xpath, "//a[@title='Minha Conta']").click
  sleep(1)
  fill_in "email", with: "samo@go2usa.info"
  sleep(1)
  find(:xpath, "//input[@type='submit']").click
  sleep(1)
  fill_in "user_password", with: "abcd1234"
  sleep(1)
  find(:xpath, "//input[@type='submit']").click
end