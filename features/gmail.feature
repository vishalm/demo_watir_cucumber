Feature: Gmail
  As a user
  I want to use Google mailing service
  To send and receive emails

  @watir
  Scenario: Login to gmail
    Given I am on gmail home page
    When I provide valid credentials
    Then I should see my inbox


