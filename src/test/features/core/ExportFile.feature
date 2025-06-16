#@Regression
Feature: Sorted and ability to generate export file

  #@Regression
  Scenario: Verify IAIC admin/IAIC super admin able to generate export file for employee of a group.
    When "IAIC Administered" group is created manually by iaic admin
    Then Verify employee added & "Enrolled"
    And web browser is landed on the "Billing Page"
    And "Export Enrollment Report" is clicked
    And "Report Type" is clicked
    And "Select Report Type" is clicked
    And "submit Button" is clicked
    Then "Report Exported" is displayed

  #@Regression
  Scenario: Verify IAIC admin/IAIC super admin able to generate export file for employee of a Inactive/Terminated group.
    When "IAIC Administered" group is created manually by iaic admin
    Then Verify employee added & "Enrolled"
    And web browser is landed on the "Billing Page"
    And "Export Enrollment Report" is clicked
    And "Report Type" is clicked
    And "Select Report Type" is clicked
    And "submit Button" is clicked
    Then "Report Exported" is displayed