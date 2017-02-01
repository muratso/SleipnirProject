Given(/^I am on Cadastre\-se page$/) do
  @home_page = HomePage.new
  @home_page.load

  @my_account = @home_page.open_my_account
  @sign_up = @my_account.click_on_sign_up

end

Then(/^I should see sign up message$/) do
  expect(@sign_up.headline).to have_content("Cadastre-se para ser um")
end

When(/^I fill the sign up form$/) do
  @sign_up.fill_register_form($USERNAME,$PASSWORD)
end

When(/^I submit the register form$/) do
  @sign_up.submit_sign_up_form
end

Then(/^I should see the succeeded sign up notification$/) do
  expect(@sign_up.notification_message).to have_content("Bem vindo! Você realizou seu registro com sucesso.")
end