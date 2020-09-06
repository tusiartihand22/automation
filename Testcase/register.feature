Feature: Flip - Register

  @flig @register @valid-registration-from-button
  Scenario: User success registration from daftar button
    After user click on daftar button then user successfully registered from registration page

    Given user visit login page
    When user is on login page
    And user click on "daftar" button
    Then user is on registration page
    When user input "NAME" into name field
    And user input "EMAIL" into email field
    And user input "PASSWORD" into password field
    And user input "PHONE_NUMBER" into phone number field
    And user click on "daftar" button from registration
    Then user is on "phone verification" page
    When user click on "kirim lewat whatsapp" button
    Then user is on "input verification code" page
    When user input valid verification code
    And user click on "verifikasi" button
    Then user is on "home" page
    
  @flig @register @valid-registration-from-link
  Scenario: User success registration from daftar link
    After user click on daftar link then user successfully registered from registration page

    Given user visit login page
    When user is on login page
    And user click on "daftar" link
    Then user is on registration page
    When user input "NAME" into name field
    And user input "EMAIL" into email field
    And user input "PASSWORD" into password field
    And user input "PHONE_NUMBER" into phone number field
    And user click on "daftar" button from registration
    Then user is on "phone verification" page
    When user click on "kirim lewat SMS" button
    Then user is on "input verification code" page
    When user input valid verification code
    And user click on "verifikasi" button
    Then user is on "home" page

  @flig @register @invalid-registration
  Scenario Outline: User input invalid data then failed to registration
    After user click on daftar button then input invalid data registration so user will get failed on registration flow

    Given user visit login page
    When user is on login page
    And user click on "daftar" link
    Then user is on registration page
    When user input "<name>" into name field
    And user input "<email>" into email field
    And user input "<password>" into password field
    And user input "<phone>" into phone number field
    And user click on "daftar" button from registration
    Then user will see error message "<error>"

    Examples: 
    | name | email           | password      | phone        | error                                                                 |
    | Lala | lala            | password12345 | 081200000000 | Please include an '@' in the email address. 'lala' is missing an '@'. |
    | Lala | lala@gmail.com  | password      | 081200000000 | Password minimal 8 karakter                                           |
    