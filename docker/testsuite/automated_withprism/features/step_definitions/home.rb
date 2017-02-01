
Given(/^I am on the home page$/) do
  @home_page = HomePage.new
  @home_page.load
end

Then(/^I should see the headline message$/) do
  expect(@home_page.headline_message).to have_content('somos a Youse')
end