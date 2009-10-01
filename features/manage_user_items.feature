Feature Manage user items
  So that I can get things done
  As a registered or an anonymous user
  I want to be able to add cost/reward items, list them, activate/deactivate them, and edit them
  
  Background:
    Given the following "Item":
      | Title     | Points | Time Increment |
      | Cost Item | -4     | 120            |
      | Gain Item | 8      | 60             |
  
  Scenario: Add a Cost Item
    When I go to "the items page"
    And I follow "add an item"
    Then I should see "New Item"
    When I fill in the following:
      | Title          | Play the XBox 360 |
      | Points         | -2                |
      | Time Increment | 30                |
    And I press "submit"
    Then I should see "You can now Play the XBox 360 for a cost of 2 points per 30 minutes of time spent"
    
  Scenario: Add a Reward Item
    When I go to "the items page"
    And I follow "add an item"
    Then I should see "New Item"
    When I fill in the following:
      | Title          | Finish test scenario for Earn It! |
      | Points         | 2                                 |
      | Time Increment | 15                                |
    And I press "submit"
    Then I should see "You can now Finish test scenario for Earn It! for a gain of 2 points per 15 minutes of time spent"
    
  Scenario: List all Items
    When I go to "the items page"
    Then I should see a list of "items" with a length of at least "2"
    
  Scenario: List all Cost Items
  Scenario: List all Reward Items
  Scenario: Deactivate an Item
  Scenario: Activate an Item
  Scenario: Edit an Item