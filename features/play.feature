Feature: Play Around
  As a BDD tester
  I want an example of Cucumber working with Android and Appium
  So I can see if it is a feasible framework for my own project

  Scenario: No Message
    Given I am on the "Main" screen
    When I click the "Send" button without a message
    Then I am taken to the "Display Message" screen
    And the message "No Message!" is displayed

  Scenario: Special Characters
    Given I am on the "Main" screen
    And I enter text "$Hello & Welcome!!"
    When I click the "Send" button
    Then I am taken to the "Display Message" screen
    And the message "$Hello & Welcome!!" is displayed
