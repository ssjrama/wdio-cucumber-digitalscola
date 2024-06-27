Feature: The Internet Guinea Pig Website

  Scenario Outline: As a user, I can log into the secure area

    Given I am on the login page
    When I login with <username> and <password>
    Then I should see a home item with the name <message>

    Examples:
      | username      | password     | message             |
      | standard_user | secret_sauce | Sauce Labs Backpack |