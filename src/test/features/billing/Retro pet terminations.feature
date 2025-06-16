#@group
Feature: Retro Pet Termination

  Background: User is logged in
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"

  #@group
  Scenario: Verify 'Amount paid' shows addition of all part payments done for that bill
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify 'BILLING STATUS' get updated to 'BILLED' status when bill get generated
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"

  #@group
  Scenario: Verify 'BILLING STATUS' get updated to 'remitted' status when remittance file is uploaded
    And Select New Payroll Date for 1 month
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

  #@group
  Scenario: Verify 'BILLING STATUS' get updated to 'Paid' status when bill get paid by confirming remitted amount
    And Select New Payroll Date for 1 month
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

  #@group
  Scenario: Verify balance amount get shown in 'Outstanding Balance' in next generated bill if previous bill is paid partially.
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify addition of 'outstanding amount' from previous bill and 'Billed amount' of latest generated bill get shown in 'Total Due Amount' of latest generated bill.    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify If bills have been generated and not paid, the next billing cylce on the dashboard will be refreshed (Total amount Due, Outstanding Balnace) when the prior bills are paid.
    And Select New Payroll Date for 1 month
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify 'Remitted Date' get updated to the date when latest remittance file get uploaded.
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify after uploading remittance file, 'Cash Remitted' shows Amount deducted + Amount contributed applied on the remittance file for the bill.
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify after uploading remittance file, 'Credit Remitted' shows total credit applied on the remittance file for the bill.
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify 'Available Group Credit' shows group credit available to the group.
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Add Credit" is clicked
    And "Payment Type" is clicked
    And "Select Payment Method" is clicked
    And "1000" is entered in "Add Credit Amount"
    Then "Sign In" is clicked

  #@group
  Scenario: Verify Bills in "PAID" status will have the  'Available Group Credit' field frozen as per the date paid. (Dynamic Field which gets freez once PAID)
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify if confirm amount is > (Remitted(Cash) - Adjustment) then 'Available Group Credit' shows Previous Group Credit + (Confirmed - Remitted (Cash) + Adjustment).
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Add Credit" is clicked
    And "Payment Type" is clicked
    And "Select Payment Method" is clicked
    And "1000" is entered in "Add Credit Amount"
    Then "Sign In" is clicked

  #@group
  Scenario: Verify 'Total outstanding adjustment' shows sum of adjustment used so far.
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify while EPR and GPR jobs are run , Bill is generated in billing dashboard and payroll deduction report is also generated
    And Select New Payroll Date for 1 month
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

  #@group
  Scenario: Verify Cash confirmation flow while processing Payment of a Bill
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify Billing dashboard when credit is added for group from group details page
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Add Credit" is clicked
    And "Payment Type" is clicked
    And "Select Payment Method" is clicked
    And "1000" is entered in "Add Credit Amount"
    Then "Sign In" is clicked

  #@group
  Scenario: Verify that when group credit is utilised from remittance file it is reflected in billing dashboard
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Add Credit" is clicked
    And "Payment Type" is clicked
    And "Select Payment Method" is clicked
    And "1000" is entered in "Add Credit Amount"
    Then "Sign In" is clicked

  #@group
  Scenario: Verify 'Total Billed Amount' shows all premium incurred for that particular Bill date
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify 'Billing Cycle' shows the Bill cycle number for which bill was generated
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify 'Billed Date' shows the Actual Bill creation date for which bill was generated
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify 'Due Date' shows the Actual Due date of the bill generated
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify 'Outstanding Balance' shows all unpaid premium for prior bill cycles - Adjustment
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify 'Total Due amount' shows Outstanding Balance (unpaid bills at the time) + Billed Amount
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify 'Adjustment applied' shows adjustment amount added in remittance file
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

  #@group
  Scenario: Verify Generic row in Payroll deduction report file will be named as 'Group Level Total' for Employee and Pet Level
    And Select New Payroll Date for 1 month
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

  #@group
  Scenario: Verify Adjustment value will be reflected as positive value in Payroll deduction report at employee/pet level
    And Select New Payroll Date for 1 month
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

  #@group
  Scenario: Verify 'BILLING STATUS' get updated to 'ADVANCE PAYMENT' status when we add group credit before the bill generation
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Add Credit" is clicked
    And "Payment Type" is clicked
    And "Select Payment Method" is clicked
    And "1000" is entered in "Add Credit Amount"
    Then "Sign In" is clicked