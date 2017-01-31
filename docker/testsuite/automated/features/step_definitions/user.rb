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

When(/^I pass mouse over and I press "([^"]*)"$/) do |element|
  find(:xpath, "//a[@class='account-header__account-link account-header__account-with-sub-menu']").hover
  sleep(1)
  click_on element
end