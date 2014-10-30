Feature: Quote Requestss
  As a user, I should be able to request quotes so that I can know how much services will cost

  Background:
    Given I visit the home page

  @javascript
  Scenario: Create valid quote request
    When I fill out the quote request form with valid values
    Then I should see a succesful quote request message

  @javascript
  Scenario: Create invalid quote request
    When I fill out the quote request form with invalid values
    Then I should see an unsuccesful quote request message

  # @javascript
  # Scenario: Sign In
  #   When I try to log in with the right password
  #   Then I should be logged in

  # @javascript
  # Scenario: change settings
  #   When I try to log in with the right password
  #   And I go to the settings page
  #   And I change my settings
  #   And I save it
  #   Then my changes should be saved

  # @javascript
  # Scenario: Sign Out
  #   When I try to log in with the right password
  #   And I visit the home page
  #   And I log out
  #   Then I should be logged out

  # Scenario: Forgot Password
  #   When I visit the password retrieval page
  #   Then I should be able to get a password reset email
  #   And I should be able to change my password to "5tay9uftMan"