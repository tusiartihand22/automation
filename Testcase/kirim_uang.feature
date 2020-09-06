Feature: Flip - Kirim uang fitur

  @flig @kirim-uang @kirim-uang-unverified-account
  Scenario: User with case not verified account then trying to use kirim uang fitur
    Background: Given user login with not verified account

    When user is on homepage
    And verification modal will be shown
    When user click on "nanti saja" button
    Then user is on homepage 
    And user click on "kirim uang" link
    Then verification modal will be shown

  @flig @kirim-uang @kirim-uang-luar-unverified-account
  Scenario: User with case not verified account then trying to use kirim uang luar negeri fitur
    Background: Given user login with not verified account

    When user is on homepage
    And verification modal will be shown
    When user click on "nanti saja" button
    Then user is on homepage 
    And user click on "kirim uang luar negeri" link
    Then verification modal will be shown
    When user click on "nanti saja" button
    Then user is on "kirim uang ke luar negeri" page

  @flig @kirim-uang @terima-uang-unverified-account
  Scenario: User with case not verified account then trying to use terima uang fitur
    Background: Given user login with not verified account

    When user is on homepage
    And verification modal will be shown
    When user click on "nanti saja" button
    Then user is on homepage 
    And user click on "terima uang" link
    Then verification modal will be shown

  @flig @kirim-uang @refund-unverified-account
  Scenario: User with case not verified account then trying to use refund fitur
    Background: Given user login with not verified account

    When user is on homepage
    And verification modal will be shown
    When user click on "nanti saja" button
    Then user is on homepage 
    And user click on "buat refund" link
    Then user is on "refund" page

  @flig @kirim-uang @refund-from-dropdown-unverified-account
  Scenario: User with case not verified account then trying to use refund fitur
    Background: Given user login with not verified account

    When user is on homepage
    And verification modal will be shown
    When user click on "nanti saja" button
    Then user is on homepage 
    And user click on profil dropdown
    And user click on "buat refund" menu
    Then user is on "refund" page
    