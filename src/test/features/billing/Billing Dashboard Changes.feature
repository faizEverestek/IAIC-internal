#@Regression 
Feature: Billing Dashboard Changes

  #@Regression
  Scenario: Verify 'Amount paid' shows addition of all part payments done for that bill
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    Then "Automation_vjuoOzxT4" is entered in "Search Group Name"
    And "View" is clicked
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression 
  Scenario: Verify 'BILLING STATUS' get updated to 'BILLED' status when bill get generated
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    Then Verify paid amount shows "37.49" and bill status changes to "BILLED"

  #@Regression 
  Scenario: Verify 'BILLING STATUS' get updated to 'remitted' status when remittance file is uploaded
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
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression 
  Scenario: Verify 'BILLING STATUS' get updated to 'Paid' status when bill get paid by confirming remitted amount
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
    And "Auto Remittance Option" is clicked
    And "Done Button" is clicked
    And wait for 9 seconds "for loading billing dashboard"
    And "Billing Dashboard" is clicked
    And "Accounts Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading billing dashboard"
    And "Confirm" is clicked
    And "37.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked

  #@Regression 
  Scenario: Verify If remittance uploaded while in billed/remitted status, amount remitted will overwrite.
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
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression 
  Scenario: Verify If remittance uploaded while in Paid status, amount remitted will add in previously remmited amount.
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
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression 
  Scenario: Verify balance amount get shown in 'Outstanding Balance' in next generated bill if previous bill is paid partially.
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    And "Remit Button" is clicked

  #@Regression 
  Scenario: Verify addition of 'outstanding amount' from previous bill and 'Billed amount' of latest generated bill get shown in 'Total Due Amount' of latest generated bill.
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    And "Remit Button" is clicked

  #@Regression 
  Scenario: Verify If bills have been generated and not paid, the next billing cylce on the dashboard will be refreshed (Total amount Due, Outstanding Balnace) when the prior bills are paid.
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    Then Verify paid amount shows "37.49" and bill status changes to "BILLED"

  #@Regression 
  Scenario: Verify 'Remitted Date' get updated to the date when latest remittance file get uploaded.
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
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression 
  Scenario: Verify 'Amount Paid' get updated Whenever user confirm an additional payment (Consolidate all payments).
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
    And "Auto Remittance Option" is clicked
    And "Done Button" is clicked
    And wait for 9 seconds "for loading billing dashboard"
    And "Billing Dashboard" is clicked
    And "Accounts Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading billing dashboard"
    And "Confirm" is clicked
    And "37.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked

  #@Regression 
  Scenario: Verify after uploading remittance file, 'Cash Remitted' shows Amount deducted + Amount contributed applied on the remittance file for the bill.
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
    And "Auto Remittance Option" is clicked
    And "Done Button" is clicked
    And wait for 9 seconds "for loading billing dashboard"
    And "Billing Dashboard" is clicked
    And "Accounts Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading billing dashboard"
    And "Confirm" is clicked
    And "37.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked

  #@Regression 
  Scenario: Verify after uploading remittance file, 'Credit Remitted' shows total credit applied on the remittance file for the bill.
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
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression 
  Scenario: Verify 'Available Group Credit' shows group credit available to the group.
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Add Credit" is clicked
    And "Payment Type" is clicked
    And "Select Payment Method" is clicked
    And "1000" is entered in "Add Credit Amount"
    Then "Sign In" is clicked

  #@Regression 
  Scenario: Verify Bills in "PAID" status will have the  'Available Group Credit' field frozen as per the date paid. (Dynamic Field which gets freez once PAID)
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
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression 
  Scenario: Verify if confirm amount is > (Remitted(Cash) - Adjustment) then 'Available Group Credit' shows Previous Group Credit + (Confirmed - Remitted (Cash) + Adjustment).
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Add Credit" is clicked
    And "Payment Type" is clicked
    And "Select Payment Method" is clicked
    And "1000" is entered in "Add Credit Amount"
    Then "Sign In" is clicked

  #@Regression 
  Scenario: Verify 'Total outstanding adjustment' shows sum of adjustment used so far.
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
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression
  Scenario: Verify while EPR and GPR jobs are run , Bill is generated in billing dashboard and payroll deduction report is also generated
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
    And "Auto Remittance Option" is clicked
    And "Done Button" is clicked
    And wait for 9 seconds "for loading billing dashboard"
    And "Billing Dashboard" is clicked
    And "Accounts Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading billing dashboard"
    And "Confirm" is clicked
    And "37.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Group Link" is clicked
    And "View" is clicked
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression 
  Scenario: Verify Cash confirmation flow while processing Payment of a Bill
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
    And "Auto Remittance Option" is clicked
    And "Done Button" is clicked
    And wait for 9 seconds "for loading billing dashboard"
    And "Billing Dashboard" is clicked
    And "Accounts Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading billing dashboard"
    And "Confirm" is clicked
    And "37.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Group Link" is clicked
    And "View" is clicked
    And "Billing Reports" is clicked
    Then "Download" is clicked

  @Regression
  Scenario: Verify Billing dashboard when credit is added for group from group details page
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Add Credit" is clicked
    And "Payment Type" is clicked
    And "Select Payment Method" is clicked
    And "1000" is entered in "Add Credit Amount"
    Then "Done Button" is clicked
    And web browser is landed on the "Billing Page"
    And wait for 2 seconds "for elements to be visible"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for elements to be visible"
    Then following elements with respective text values are present:
      | NAME                   | VALUE            |
      | CREDIT AVAILABLE LABEL | CREDIT AVAILABLE |
      | CREDIT AVAILABLE VALUE | 1000             |

  #@Regression 
  Scenario: Verify that when group credit is utilised from remittance file it is reflected in billing dashboard
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Add Credit" is clicked
    And "Payment Type" is clicked
    And "Select Payment Method" is clicked
    And "1000" is entered in "Add Credit Amount"
    Then "Sign In" is clicked

  #@Regression 
  Scenario: Verify Payment reversal is applicable only for a PAID Bill
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
    And "Auto Remittance Option" is clicked
    And "Done Button" is clicked
    And wait for 9 seconds "for loading billing dashboard"
    And "Billing Dashboard" is clicked
    And "Accounts Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading billing dashboard"
    And "Confirm" is clicked
    And "37.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked

  #@Regression 
  Scenario: Verify 'Total Billed Amount' shows all premium incurred for that particular Bill date
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
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression 
  Scenario: Verify 'Billing Cycle' shows the Bill cycle number for which bill was generated
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
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression 
  Scenario: Verify Generic row in Payroll deduction report file will be named as 'Group Level Total' for Employee and Pet Level
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
    And "Auto Remittance Option" is clicked
    And "Done Button" is clicked
    And wait for 9 seconds "for loading billing dashboard"
    And "Billing Dashboard" is clicked
    And "Accounts Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading billing dashboard"
    And "Confirm" is clicked
    And "37.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Group Link" is clicked
    And "View" is clicked
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression 
  Scenario: Verify Adjustment value will be reflected as positive value in Payroll deduction report at employee/pet level
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
    And "Auto Remittance Option" is clicked
    And "Done Button" is clicked
    And wait for 9 seconds "for loading billing dashboard"
    And "Billing Dashboard" is clicked
    And "Accounts Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading billing dashboard"
    And "Confirm" is clicked
    And "37.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Group Link" is clicked
    And "View" is clicked
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression 
  Scenario: Verify bill get generated for updated Bill creation date, Updated from group setting.
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    Then Select New Payroll Date for 2 month

  #@Regression 
  Scenario: Verify once adjustments of total -5 are settled for first bills, user can add adjustments upto $5 for next bills
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
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression 
  Scenario: Verify adjustments can be split upto -5 per group within 3 billing cycles
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
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression 
  Scenario: Verify for renewed policy group we can add adjustments of more $5 even if for initial policy there was $5 adjustments
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
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked

  #@Regression 
  Scenario: Verify System must validate that the adjustment value per group is never greater that $5.00 on remittance and if greater system must display error
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
    And "src//test//testData//Remittance_adjustment.csv" is uploaded at "File Upload"
    Then "Done Button" is clicked
