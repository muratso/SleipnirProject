Given(/^I am logged in$/) do
  @home_page = HomePage.new
  @home_page.load

  @home_page.open_my_account

  @my_account = MyAccountPage.new
  expect(@my_account.current_url).to end_with("/users/email_verifications/new")

  @my_account.fill_email($USERNAME)
  @my_account.click_on_submit
  @my_account.fill_password($PASSWORD)
  @my_account.click_on_submit
end

Then(/^I should see the greetings message$/) do
  expect(@my_account.greetings_message).to have_content("Olá, John")
end

Then(/^I pass mouse over the greetings message$/) do
  @my_account.greetings_message.hover
end

Then(/^I pass mouse over the greetings message and click Sair$/) do
  @my_account.greetings_message.hover
  @my_account.logout_button.click
end

Then(/^I should be back to homepage$/) do
  expect(@my_account.current_url).to be("https://youse.com.br")
end
