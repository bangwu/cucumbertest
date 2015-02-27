Feature:
  Scenario Outline: Withdraw fixed amount of $50
    Given I have <Balance> in my account
    When I choose to withdraw the fixed amount of <Withdraw>
    Then I should receive <Received> crash
    And the balance of my account should be <Remining>
  Examples:
      | Balance | Withdraw | Received | Remining |
      | $500    | $50      | $50      | $450     |
      | $500    | $100     | $100     | $400     |
      | $500    | $200     | $200     | $300     |
