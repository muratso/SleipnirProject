Feature: Login/Logout
  This feature should login in the system and logout

  Scenario: Login
    Given I am on the home page
    Then I should see "MINHA CONTA"
    When I press "MINHA CONTA" button
    Then I should see "Faça seu login para acessar sua conta Youse."
    When I fill login user "email"
      And I press "próximo passo"
      And I fill login password "user_password"
      And I press "entrar"
    Then I should see "Login efetuado com sucesso."

  Scenario: Logout
    Given I am on the home page
      And I am logged in
    Then I should see "Olá, John"
    When I pass mouse over and I press "Sair"
    Then I should see "Olá, somos a Youse"