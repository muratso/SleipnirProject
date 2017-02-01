Given(/^I am on the quote page$/) do
  @home_page = HomePage.new
  @home_page.load

  @quote = @home_page.open_about_home_insurance
  expect(@quote.current_url).to end_with("/seguro-residencial")
end

Then(/^I should see home insurance ad$/) do
  expect(@quote.product_banner).to have_content("Sua casa é do seu jeito")
end

When(/^I press online quote button$/) do
  @quote.online_quote_button.click
end

Then(/^I should see first step greeting message$/) do
  expect(@quote.first_step_greeting).to have_content("Oi. A gente quer te conhecer melhor, é rapidinho.")
end

When(/^I fill the first step form$/) do
  @quote.fill_first_step
end

When(/^I submit the quote form$/) do
  @quote.submit.click
end

Then(/^I should see second step greeting message$/) do
  expect(@quote.second_step_greeting).to have_content("Essa é a parte mais legal: bora deixar o seguro com a sua cara?")
end

When(/^I fill the second step form$/) do
  @quote.fill_second_step
end

When(/^I should see third step greeting message$/) do
  expect(@quote.third_step_greeting).to have_content("Sugestões de Assistências Youse para você.")
end

When(/^I should see the forth step greeting message$/) do
  expect(@quote.forth_step_greeting).to have_content("Legal! Agora precisamos saber algumas informações sobre o imóvel :)")
end

When(/^I fill the forth step form$/) do
  @quote.fill_forth_step
end

When(/^I should see the fifth step greeting message$/) do
  expect(@quote.fifth_step_greeting).to have_content("Aee! Estamos quase lá.")
end

When(/^I fill the fifth step form$/) do
  @quote.fill_fifth_step
end

When(/^I click on payment button$/) do
  @quote.payment_button.click
end

When(/^I should see the payment instruction$/) do
  expect(@quote.payment_instruction).to have_content("Para finalizar, insira os dados de pagamento.")
end