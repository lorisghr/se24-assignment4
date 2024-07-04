Feature: InsertIntoListAcceptanceTests
  This feature inserts elements into the list.

  Scenario: Insert an element into the list
    Given an empty list
    When I insert an element with value 0.4
    Then the list should contain 1 element
    And the list should contain that element

  Scenario: Insert an element at the beginning of the list
    Given a list which already contains the value 0.4
    When I insert an element with the value 0.5
    Then the list should contain the elements in the following order:
      | 0.5 |
      | 0.4 |

  Scenario: Insert an element at the end of the list
    Given a list which already contains the value 0.5 and 0.4
    When I insert an element with the value 0.6
    Then the length of the list should be 3
    And the list should look like this:
      | 0.5 |
      | 0.4 |
      | 0.6 |

  Scenario: Insert multiple elements into an empty list
    Given an empty list
    When I insert an element with value 0.2
    And I insert an element with value 0.3
    Then the list should contain 2 elements
    And the list should contain the elements in the following order:
      | 0.2 |
      | 0.3 |
