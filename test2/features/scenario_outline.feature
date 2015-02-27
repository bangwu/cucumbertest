Feature:
  Scenario: Withdraw fixed amount of $50
    Given I have $500 in my account
    When I choose to withdraw the fixed amount of $50
    Then I should receive $50 crash
    And the balance of my account should be $450

  Scenario: Withdraw fixed amount of $100
    Given I have $500 in my account
    When I choose to withdraw the fixed amount of $100
    Then I should receive $100 crash
    And the balance of my account should be $400

  Scenario: Withdraw fixed amount of $150
    Given I have $500 in my account
    When I choose to withdraw the fixed amount of $100
    Then I should reveive $150 crash
    And the balance of my account should be $350
