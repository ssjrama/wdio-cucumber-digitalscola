@checkout
Feature: Checkout

  Background:
    Given I am on the login page

  @checkout_positive
  Scenario Outline: As a user, I can checkout the item into a cart
    Given I am on the login page
    When I login with <username> and <password>
    Then I should see a home item with the name <message>
    Then I add item to a cart
    Then I click cart icon
    Then I should see the item I add

    Examples:
      | username      | password     | message             |
      | standard_user | secret_sauce | Sauce Labs Backpack |
