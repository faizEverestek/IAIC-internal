#@Regression @smoke
Feature: Settings

  @Regression
  Scenario: Verify Renewal Notification and Enrollment Notification Dates
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Group Settings Link" is clicked
    And "Notifications Link" is clicked
  #Test Case1: Renewal Notification Date Update
    Then "Save Button" is clicked
  #Test Case2: Verify Notification Update Success for Enrollment Notification Date
    Then "Notification Updated Success" is displayed
