Feature: New User
  This feature should create a new user

  Scenario: Open my account page
    Given I am on the home page
    Then I should see "MINHA CONTA"
    When I press "MINHA CONTA"
    Then I should see "Faça seu login para acessar sua conta Youse."

  Scenario: Create a new account
    Given I am on the home page
    Then I should see "MINHA CONTA"
    When I press "MINHA CONTA"
    Then I should see "CADASTRE-SE"
    When I press "Cadastre-se"
    Then I should see "Cadastre-se para ser um Youser"
    When I fill in "user_name" with "John Doe"
      And I fill login user "user_email"
      And I fill login password "user_password"
      And I fill login password "user_password_confirmation"
      And I press "enviar cadastro"
    Then I should see "Bem vindo! Você realizou seu registro com sucesso."