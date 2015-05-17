Feature: Gmail
  As a user
  I want to use Google mailing service
  To send and receive emails

  Background:
    Given I am on gmail home page
    When I provide valid credentials

  @watir
  Scenario: Login to gmail
    Then I should see my inbox

  @watir
  Scenario: Count the emails of my inbox
    Then I should see my inbox
    And I should have 2 email in my inbox

  @watir
  Scenario: Read the first email
    Then I should see my inbox
    And I read the first email successfully

