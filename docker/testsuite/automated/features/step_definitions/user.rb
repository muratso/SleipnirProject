Given(/^I am on the home page$/) do
  puts visit "http://youse.com.br"
end

Then(/^I should see "([^"]*)"$/) do |text|
  page.should have_content text
end

When(/^I press "([^"]*)" button$/) do |element|
  click_on element
end

When(/^I press "([^"]*)"$/) do |element|
  click_on element
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |element, text|
  sleep(1)
  fill_in element, with: text
end

When(/^I fill login user "([^"]*)"$/) do |element|
  sleep(1)
  fill_in element, with: $USERNAME
end

When(/^I fill login password "([^"]*)"$/) do |element|
  sleep(1)
  fill_in element, with: $PASSWORD
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

When(/^I pass mouse over and I press "([^"]*)"$/) do |element|
  find(:xpath, "//a[@class='account-header__account-link account-header__account-with-sub-menu']").hover
  sleep(1)
  click_on element
end