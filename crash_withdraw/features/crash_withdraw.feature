Feature: Cash Withdraw
  Scenario: Successful withdraw from an account in credit
    Given I have credit $100 in my account
    When I withdraw $20
    Then $20 should be dispensed
	And the balance of my account should be $80
