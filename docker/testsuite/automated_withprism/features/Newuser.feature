Feature: Sign up

Scenario: Create a new account

  Given I am on Cadastre-se page
  Then I should see sign up message
  When I fill the sign up form
    And I submit the register form
  Then I should see the succeeded sign up notification