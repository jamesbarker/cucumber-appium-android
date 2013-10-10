Feature: Demonstrate
  As a BDD tester
  I want an automated Android mobile BDD testing framework
  So I can streamline my development process

  Scenario: Welcome Message
    Given I am on the "Main" screen
    And I enter text "Hello World!"
    When I click the "Send" button
    Then I am taken to the "Display Message" screen
    And the message "Hello World!" is displayed
