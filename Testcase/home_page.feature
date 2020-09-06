Feature: Flip - Home page

  @flig @homepage @not-verified-account
  Scenario: User with case not verified account then verification modal will be appeared
    After user success logged in then verification modal will be appeared on homepage

    Given user visit login page
    When user is on login page
    And user input "NOT_VERIFIED_USERNAME" into username field
    And user input "NOT_VERIFIED_PASSWORD" into password field
    And user click login button
    Then home page displays valid user account
    And verification modal will be shown

  @flig @homepage @verified-account
  Scenario: User with verified account then home page will be appeared without verification modal
    After user success logged in then successfully redirect to home page without verification modal

    Given user visit login page
    When user is on login page
    And user input "VERIFIED_USERNAME" into username field
    And user input "VERIFIED_PASSWORD" into password field
    And user click login button
    Then home page displays valid user account
    And verification modal will not be shown
