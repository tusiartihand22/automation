Feature: Flip - Login Page

  @flig @login-page @verification-fitur
  Scenario: User access to login page flip then primary fitur appeared
    After user access to url "https://flip.id/login" then all login fitur appeared on screen

    Given user visit login page
    When user is on login page
    Then user should see "daftar" button
    And user should see title and subtitle content
    And user should see login content
    And user should see "tutorial" link
    And user should see "cara kerja" link
    And user should see "faq" link
    And user should see "chat" icon
    When user tap on flip logo
    Then user still on login page

  @flig @login-page @tutorial-page
  Scenario: User access tutorial link then redirected to tutorial page
    After user tap on "tutorial" link then redirect to page "https://flip.id/site/tutorial"

    Given user visit login page
    When user is on login page
    And user tap on "tutorial" link
    Then user is on "tutorial" page

  @flig @login-page @cara-kerja-page
  Scenario: User access cara kerja link then redirected to cara kerja page
    After user tap on "cara kerja" link then redirect to page "https://flip.id/start"

    Given user visit login page
    When user is on login page
    And user tap on "cara kerja" link
    Then user is on "cara kerja" page

  @flig @login-page @bantuan-page
  Scenario: User access faq link then redirected to bantuan page
    After user tap on "faq" link then redirect to page "https://flipid.zendesk.com/hc/id"

    Given user visit login page
    When user is on login page
    And user tap on "faq" link
    Then user is on "bantuan" page

  @flig @login-page @chat-widget
  Scenario: User access chat icon then widget chat successfully opened
    After user tap on "chat" icon then widget chat successfully opened

    Given user visit login page
    When user is on login page
    And user tap on "chat" icon
    Then user is on "chat" widget
 
  @flig @login-page @valid-login
  Scenario: User login with valid account then redirected to home page
    After user login with valid username and password then redirect to page "https://flip.id/home"

    Given user visit login page
    When user is on login page
    And user input "USERNAME" into username field
    And user input "PASSWORD" into password field
    And user click login button
    Then home page displays valid user account
  
  @flig @login-page @invalid-username
  Scenario: User login with invalid username and valid password then error message should be appeared
    After user login with invalid username and valid password then "Email atau Password salah"

    Given user visit login page
    When user is on login page
    And user input "INVALID_USERNAME" into username field
    And user input "PASSWORD" into password field
    And user click login button
    Then user will see error message "Error: - Email atau Password salah" in login page

  @flig @login-page @invalid-password
  Scenario: User login with valid username and invalid password then error message should be appeared
    After user login with valid username and invalid password then "Email atau Password salah"

    Given user visit login page
    When user is on login page
    And user input "USERNAME" into username field
    And user input "INVALID_PASSWORD" into password field
    And user click login button
    Then user will see error message "Error: - Email atau Password salah" in login page

  @flig @login-page @forgot-password-page
  Scenario: User access lupa password link then redirected to lupa password page
    After user tap on "lupa password" link then redirected to lupa password page

    Given user visit login page
    When user is on login page
    And user tap on "lupa password" link
    Then user is on "lupa password" page
