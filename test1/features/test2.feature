Feature: This is the feature title
  This is the description of the feature which can
  span multiple lines.
  You can even include empty lines line this one :

  Infact everything until the next Gherkin keybord is include
  in the description.

  Scenario: Successful with drawal from an account in credit
    Given I have $100 in my account
    But my account is invalid
    When I request $20
    Then $20 shoukd be dispensed
    And I should told to contact the bank
