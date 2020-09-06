Feature: Flip - Data verification process process

  @flig @verification @success-verification
  Scenario: User with case not verified account then verification modal will be appeared
    After user success logged in then user doing verification flow till success

    Given user visit login page
    When user is on login page
    And user input "NOT_VERIFIED_USERNAME" into username field
    And user input "NOT_VERIFIED_PASSWORD" into password field
    And user click login button
    Then home page displays valid user account
    And verification modal will be shown
    When user input "NAME" into name field 
    And user choose "Pengusaha" into pekerjaan field
    And user choose "Kab.Bogor" into tempat lahir field
    And user choose "04 Sep 1995" into tanggal lahir field
    And user input "Kab. Bekasi" into tempat tinggal field
    And user input "Jl. Raya no.2 Bekasi Barat" into alamat lengkap field
    And user click on "simpan data" button
    Then modal closed and success data verification

  @flig @verification @not-success-verification
  Scenario: User with case not verified account then verification modal will be appeared
    After user success logged in then user cancel verification

    Given user visit login page
    When user is on login page
    And user input "NOT_VERIFIED_USERNAME" into username field
    And user input "NOT_VERIFIED_PASSWORD" into password field
    And user click login button
    Then home page displays valid user account
    And verification modal will be shown
    When user input "NAME" into name field 
    And user choose "Pengusaha" into pekerjaan field
    And user choose "Kab.Bogor" into tempat lahir field
    And user choose "04 Sep 1995" into tanggal lahir field
    And user input "Kab. Bekasi" into tempat tinggal field
    And user input "Jl. Raya no.2 Bekasi Barat" into alamat lengkap field
    And user click on "nanti saja" button
    Then modal closed and failed data verification
  