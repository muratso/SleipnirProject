Given(/^I am on the home page$/) do
  puts visit "http://youse.com.br"
end

Then(/^I should see "([^"]*)"$/) do |text|
  page.should have_content text
end

When(/^I press "([^"]*)" button$/) do |element|
  click_on element
  wait_for_ajax
end

When(/^I press "([^"]*)"$/) do |element|
  click_on element
  wait_for_ajax
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |element, text|
  fill_in element, with: text
  wait_for_ajax
end

When(/^I fill login user "([^"]*)"$/) do |element|
  fill_in element, with: $USERNAME
  wait_for_ajax
end

When(/^I fill login password "([^"]*)"$/) do |element|
  fill_in element, with: $PASSWORD
  wait_for_ajax
end

Given(/^I am logged in$/) do
  find(:xpath, "//a[@title='Minha Conta']").click
  fill_in "email", with: "samo@go2usa.info"
  wait_for_ajax
  find(:xpath, "//input[@type='submit']").click
  wait_for_ajax
  fill_in "user_password", with: "abcd1234"
  find(:xpath, "//input[@type='submit']").click
  wait_for_ajax
end

When(/^I pass mouse over and I press "([^"]*)"$/) do |element|
  find(:xpath, "//a[@class='account-header__account-link account-header__account-with-sub-menu']").hover
  click_on element
  wait_for_ajax
end