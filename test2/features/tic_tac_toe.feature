Feature:

  Scenario:
    Given a board like this:
      | |1|2|3|
      |1| | | |
      |2| | | |
      |3| | | |
    When player x play in row 2,column 1
    Then the board should look this:
      | |1|2|3|
      |1| | | |
      |2|x| | |
      |3| | | |
