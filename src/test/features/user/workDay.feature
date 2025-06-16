Feature: Workday

Background: User is logged in
    When web browser is landed on the "Groups Dashboard"
    And "Sign Out" is clicked using action class

  @Regression-QA
  Scenario: Verify workday new employee login
    When User opens on the SSO Login URL for Workday
    And web browser is landed on the "Billing Page"
    And user should be logged in using SSO authentication
    And wait for 20 seconds "for loading group dashboard"
    And "Megha" is entered in "SSO First Name"
    And "Dhotarkar" is entered in "SSO Last Name"
    And "megha.dhotarkar+workdayssoamt01@everestek.com" is entered in "SSO Email"
    And "Send Verification Code" is clicked
    And "OK" is clicked
    And Verify OTP is extracted for email
    And "13th Street" is entered in "SSO Address Line 1"
    And "3388 Shinn Street" is entered in "SSO Address Line 2"
    And "Mumbai" is entered in "SSO City"
    And "NY" is entered in "SSO State"
    And "New York" is clicked
    And "10011" is entered in "SSO Zipcode"
    And "SSO Acceptance" is clicked
    And "Done Button" is clicked

  @Regression-QA
  Scenario: Verify workday existing employee login
    When User opens on the SSO Login URL for Workday
    And user should be logged in using SSO authentication
    Then title of page is "okta-dev-44160492 - Sign In"