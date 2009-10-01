Feature Test Cucumbers Working
  In order to run other tests
  As a developer
  I want to make sure Cucumber features run properly and all the dependencies work
  
  Scenario: Add 2 + 2
    Given I have entered "2" + "2"
    When I run my function
    Then the result should be "4"