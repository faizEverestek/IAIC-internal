#@Regression
Feature: Add Renewal Type to Group Detail Screen

  Background:
    When web browser is landed on the "Groups Dashboard"

  #@Regression
  Scenario: Verify new field “Renewal Type” attribute is visible in the group detail screen for both initial & renewal term
    And "IAIC Administered" group is created manually by iaic admin
    And wait for 5 seconds "for loading group dashboard"
    Then "Renewal Type Status" is displayed

    #@Regression
  Scenario: Verify field Renewal Type will show “NOT APPLICABLE” if term being viewed is an initial term and not a renewal
    And "IAIC Administered" group is created manually by iaic admin
    And wait for 5 seconds "for loading group dashboard"
    Then "NOT APPLICABLE" is displayed at "Renewal Type Status"

  #@Regression
  Scenario: Verify field Renewal Type will show “PASSIVE” if passive renewal boolean set at time of renewal creation = TRUE
    And "IAIC Administered" group is created manually by iaic admin
    And Verify "IAIC Administered" group is renewed
    And wait for 5 seconds "for loading group dashboard"
    Then "PASSIVE" is displayed at "Renewal Type Status"

    #@Regression
  Scenario: Verify field Renewal Type will show “ENROLLMENT VIA BENADMIN” for renewal term if group type is BenAdmin enabled (as opposed to IAIC Admin)
    And "Ben Admin Administered" group is created manually by iaic admin
    And Verify "Ben Admin Administered" group is renewed
    And wait for 5 seconds "for loading group dashboard"
    Then "ENROLLMENT VIA BENADMIN" is displayed at "Renewal Type Status"

    #@Regression
  Scenario: Verify while converting PDBA not included to PDBA not included Renewal Type should show Passive for renewal term
    And "Ben Admin Administered (Post Enrollment not Included)" group is created manually by iaic admin
    And Verify "Ben Admin Administered" group is renewed
    And wait for 5 seconds "for loading group dashboard"
    Then "PASSIVE" is displayed at "Renewal Type Status"