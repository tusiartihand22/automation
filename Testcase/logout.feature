Feature: Flip - Logout

  @flig @logout
  Scenario: User logout flow
    Background: Given user login with not verified account

    When user is on homepage
    And verification modal will be shown
    When user click on "nanti saja" button
    Then user is on homepage 
    And user click on profil dropdown
    And user click on logout
    Then user is on "login" page
