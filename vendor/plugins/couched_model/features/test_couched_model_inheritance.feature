Feature Test CouchedModel Inheritance
  In order to make sure that my models inherit all the positive featured of CouchedModel
  As a developer
  I want to test a few class methods for proper responses
  
  Scenario: Add multiple properties at once
    Given Access to the "CouchedModel" class
    When I build a "Note" class that inherits from "CouchedModel"
    And I include the properties "content" and "priority"
    And I create a "@note" instance with a "content" of "testing content" and a "priority" of "1"
    Then "@note" should have a "content" of "testing content" and a "priority" of "1"