#@Regression
Feature: Remittance File Upload and Processing

Background: User is logged in
  When "IAIC Administered" group is created manually by iaic admin
  And Verify employee added & "Enrolled"
  And Select New Payroll Date for 2 month
  And web browser is landed on the "Billing Page"
  And "Billing Dashboard" is clicked
  And Verify "Filter Button" is clicked
  And "Search Group Name" is search for group
  And Verify paid amount shows "37.49" and bill status changes to "BILLED"
  And "Remit Button" is clicked
  And "Payment Type Input" is clicked
  And "Select Payment Method" is clicked
  And "Remittance Method Type Input" is clicked
  And "Upload Remittance File Option" is clicked

  #@Regression  
  Scenario: Verify Adjustment row is added to remittance file for group level payment adjustments
     And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
     Then "Done Button" is clicked
    
  #@Regression  
  Scenario: Verify System must validate that the adjustment value per group is never greater that $5.00 on remittance and if greater system must display error
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked
 
  #@Regression  
  Scenario: Verify once adjustments of total -5 are settled for first bills, user can add adjustments upto $5 for next bills
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression
  Scenario: Verify adjustments can be split upto -5 per group within 3 billing cycles
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression  
  Scenario: Verify adjustments can be split upto -5 per group within 2 billing cycles and if more than $5 provided system will throw error also once adjustments settled we can add adjustments of $5
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  @Regression
  Scenario: Verify for renewed policy group we can add adjustments of more $5 even if for initial policy there was $5 adjustments
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked