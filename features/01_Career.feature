Feature: Career


  Scenario: As a user, I want to register on careers and get an error for missing information
    Given I am on the careers page
    Then I navigate to the applications page
    When I fill in the form
    Then I should expect an error requesting a file upload
