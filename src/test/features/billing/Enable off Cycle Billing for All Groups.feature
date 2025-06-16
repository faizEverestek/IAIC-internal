#@Regression
Feature: Enable off Cycle Billing for All Groups

  Background: User is logged in
    When web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Automation_vjuoOzxT4" is entered in "Search Group Name"
    And wait for 5 seconds "for loading group dashboard"
    And "View" is clicked

  @Regression
  Scenario: Verify for Billing Type - Pay in Advance and Billing cycle -12 , if employee/pet is added before the coverage start date and within payroll calendar start and end date then the emp/pet should reflect in 1st bill(upcoming bill)
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression 
  Scenario: Verify for Billing Type - Pay in Advance and Billing cycle -12 , if employee/pet is added at payroll calendar start date then the emp/pet should reflect in 1st bill(upcoming bill)
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression 
  Scenario: Verify for Billing Type - Pay in Advance and Billing cycle -12 , if employee/pet is added at coverage start date then the emp/pet should reflect in 2nd bill(upcoming bill)
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression 
  Scenario: Verify for Billing Type - Pay in Advance and Billing cycle -12,24,52 , if employee is retro added effective first cycle then the employee should reflect in respective bills
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression 
  Scenario: Verify for Billing Type - Pay in Advance and Billing cycle -12,24,52 , if employee is retro terminated effective first cycle then the employee should reflect in next bill with 0 0 values
    And "Billing Reports" is clicked
    Then "Download" is clicked
