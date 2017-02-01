Feature: Login/Logout

  Scenario: Login
    Given I am on Minha Conta page
    Then I should see the instruction message
    When I fill the username field
      And I click on Proximo Passo
      And I fill the password field
      And I click on Entrar
    Then I should login and see my user page


  Scenario: Logout
    Given I am logged in
    Then I should see the greetings message
    When I pass mouse over the greetings message and click Sair
    Then I should be back to homepage