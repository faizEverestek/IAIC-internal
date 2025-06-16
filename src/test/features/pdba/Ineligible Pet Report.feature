#@Regression
Feature: Ineligible Pet Report - Pet Demographics

  Background: User is logged in
    When web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And wait for 15 seconds "Export Status"

  #@Regression
  Scenario: Verify for IAIC admin role ,Export button with Ineligible Pet report is visible in Global Level
    And "Export Status" is clicked
    And "Report Type" is clicked
    And "Ineligible Pet Report" is clicked
    And "Submit" is clicked
    Then "Report Exported Successfully" is displayed at "Report Exported Successfully"

  #@Regression
  Scenario: Verify for IAIC  admin role ,Export button with Ineligible Pet report is visible in Ben Admin Level
    And "Export Status" is clicked
    And "Report Type" is clicked
    And "Ineligible Pet Report" is clicked
    And "Submit" is clicked
    Then "Report Exported Successfully" is displayed at "Report Exported Successfully"

  #@Regression
  Scenario: Verify for IAIC admin role , Export button with Ineligible Pet report is visible in Group Admin Level
    And "Export Status" is clicked
    And "Report Type" is clicked
    And "Ineligible Pet Report" is clicked
    And "Submit" is clicked
    Then "Report Exported Successfully" is displayed at "Report Exported Successfully"
