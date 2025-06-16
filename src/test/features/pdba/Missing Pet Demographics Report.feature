#@Regression
Feature: Missing Pet Demographics Report - Pet Demographics

  Background: User is logged in
    When web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And wait for 15 seconds "Export Status"

  #@Regression
  Scenario: Verify for IAIC admin role ,Export button with Missing Pet Demographics Report is visible in Global Level
    And "Export Status" is clicked
    And "Report Type" is clicked
    And "Missing Pet Demographics Report" is clicked
    And "Submit" is clicked
    Then "Report Exported Successfully" is displayed at "Report Exported Successfully"

  #@Regression
  Scenario: Verify for IAIC  admin role ,Export button with Missing Pet Demographics Report is visible in Ben Admin Level
    And "Export Status" is clicked
    And "Report Type" is clicked
    And "Missing Pet Demographics Report" is clicked
    And "Submit" is clicked
    Then "Report Exported Successfully" is displayed at "Report Exported Successfully"

  #@Regression
  Scenario: Verify for IAIC admin role , Export button with Missing Pet Demographics Report is visible in Group Admin Level
    And "Export Status" is clicked
    And "Report Type" is clicked
    And "Missing Pet Demographics Report" is clicked
    And "Submit" is clicked
    Then "Report Exported Successfully" is displayed at "Report Exported Successfully"