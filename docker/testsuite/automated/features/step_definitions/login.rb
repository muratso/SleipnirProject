Given(/^I am on Minha Conta page$/) do
  @home_page = HomePage.new
  @home_page.load

  @my_account = @home_page.open_my_account
  expect(@my_account.current_url).to end_with("/users/email_verifications/new")
end

Then(/^I should see the instruction message$/) do
  expect(@my_account.notification_message).to have_content("Para continuar, faça login ou registre-se.")
end

When(/^I fill the username field$/) do
  @my_account.fill_email($USERNAME)
end

When(/^I click on Proximo Passo$/) do
  @my_account.click_on_submit
end

When(/^I fill the password field$/) do
  @my_account.fill_password($PASSWORD)
end

When(/^I click on Entrar$/) do
  @my_account.click_on_submit
end

Then(/^I should login and see my user page$/) do
  expect(@my_account.notification_message).to have_content("Login efetuado com sucesso.")
end

Then(/^I should see the login error message$/) do
  expect(@my_account.notification_message).to have_content("Email ou senha inválidos.")
end

When(/^I fill the password field with an invalid password$/) do
  @my_account.fill_password("odaosjdoasj%ˆ*&@ôs")
end