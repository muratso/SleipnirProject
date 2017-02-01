Feature: Quote

  Scenario: It should quote a home insurance
    Given I am on the quote page
    Then I should see home insurance ad
    When I press online quote button
    Then I should see first step greeting message
    When I fill the first step form
      And I submit the quote form
    Then I should see second step greeting message
    When I fill the second step form
      And I submit the quote form
    Then I should see third step greeting message
      And I submit the quote form
    Then I should see the forth step greeting message
    When I fill the forth step form
      And I submit the quote form
    Then I should see the fifth step greeting message
    When I fill the fifth step form
      And I click on payment button
    Then I should see the payment instruction
