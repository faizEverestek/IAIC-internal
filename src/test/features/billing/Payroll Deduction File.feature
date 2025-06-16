#@Regression
Feature: Capture DOE dates when removing a pet

    #@Regression
  Scenario: Verify there is a checkbox accessible in the group creation setup (INCLUDE PET COUNT IN PAYROLL DEDUCTION REPORT in step 2) that allows user to opt-in to seeing column of the count of active pets(both cats & dogs) for each employee of an IAIC Administered group
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
  Scenario: Verify the checkbox is editable ie can be ticked or unticked even after group creation/activation of an IAIC Administered group
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
  Scenario: Verify if checkbox in the group creation setup (INCLUDE PET COUNT IN PAYROLL DEDUCTION REPORT in step 2) is not selected , then in payroll deduction report the active pet counts column will not be displayed
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
  Scenario: Verify 1 employee is retro added and other normally added after generation of emp level payroll deduction report, count of all active pets of enrolled employees should be visible in the report
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
  Scenario: Verify 1 pet is retro added and after regeneration of emp level payroll deduction report, count of all active pets of enrolled employees should be visible in the report
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
  Scenario: Verify 1 employee is terminated from group and after generation of emp level payroll deduction report, count of only active pets of enrolled employees should be visible in the report
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
  Scenario: Verify 1 employee is retro terminated from group and after regeneration of emp level payroll deduction report, count of only active pets of enrolled employees should be visible in the report
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
  Scenario: Verify a pet is terminated/removed from employee and after generation of emp level payroll deduction report, count of only active pets of employees should be visible in the report
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
  Scenario: Verify a pet is retro terminated/removed from employee and after regeneration of emp level payroll deduction report, count of only active pets of employees should be visible in the report
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
  Scenario: Verify single active pet is retro terminated/removed from employee and after regeneration of emp level payroll deduction report, count of only active pets of employees should be visible in the report
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
  Scenario: Verify there is a checkbox accessible in the group creation setup (below the checkbox for “SEND PAYROLL DEDUCTION GENERATION EMAIL” in 2nd step) that allows user to opt-in to seeing column of the count of active pets(both cats & dogs) for each employee of an Ben Administered PDBA group
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
  Scenario: Verify in payroll deduction file generated at employee level of a Ben Administered group, a new column showing the count of active pets for each employee should be added
    When "Ben Admin Administered" group is created manually by iaic admin
    And web browser is landed on the "Add Employee Page"
    And "Add Employee" is clicked
    And "Employee Census Type" is clicked
    And "Employee Level Post Enrollment File Upload" is clicked
    Then Upload Post Enrollment File "Employee Level Post Enrollment"

    #@Regression
  Scenario: Verify 1 employee is terminated from group and after generation of payroll deduction report, count of only active pets of enrolled employees should be visible in the report
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
  Scenario: Verify if few pets are awaiting removal(indicating removed) in active pets tab of an employee , those pets counts should not be included in the payroll deduction report and only active pets should be visible
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
  Scenario: Verify when active single pet is removed from employee ,and after generation of payroll deduction report the pet count for that employee should show 0 in the report
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
  Scenario: Verify 2 pets are retro added for an employee and after regeneration of payroll deduction report, count of only active pets of enrolled employees should be visible in the report
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
  Scenario: Verify a pet is retro terminated/removed from employee and after regeneration of payroll deduction report, count of only active pets of employees should be visible in the report
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
  Scenario: Verify 1 employee is retro added and other normally added after generation of emp level payroll deduction report, count of all active pets of enrolled employees should be visible in the report
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
  Scenario: Verify if pet is removed in current ongoing cycle, 0 0 premium rows with Y should be visible for that pet in next generated pet level payroll deduction report
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
  Scenario: Verify if employee is terminated in current ongoing cycle, 0 0 premium rows with Y for that employee row should be visible in next generated pet level payroll deduction report
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
  Scenario: Verify if pet is retro terminated effective first cycle and currently 4th cycle is going on , 0 0 premium rows with Y for the latest cycle should be visible in next generated pet level payroll deduction report
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
  Scenario: Verify if pet is retro terminated effective first cycle and currently 4th cycle is going on , 0 0 premium rows with Y for the latest cycle should be visible in regenerated pet level payroll deduction report
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
  Scenario: Verify if pet is retro terminated effective 2nd cycle(1st day) and currently 5th cycle is going on , 0 0 premium rows with Y for the latest cycle should be visible in next generated pet level payroll deduction report with coverage end date same as 2nd cycle coverage start date
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
  Scenario: Verify active single pet is removed from employee ,0 0 premium rows with Y for the latest cycle should be visible in next generated pet level payroll deduction report
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
  Scenario: Verify all pets are removed from employee ,0 0 premium rows with Y for the latest cycle should be visible in next generated pet level payroll deduction report for all pets
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
  Scenario: Verify non IAIC admin users cannot see Regenerate payroll report button in Billing Reports
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
  Scenario: Verify created date shown in the billing reports dashboard should show the date on which the file was generate
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
  Scenario: Verify if 4 pets are retro added and later 1 pet is retro terminated, the retro terminated pet should move to Inactive pets after demographics updation
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
  Scenario: Verify per pay cycle for a Pet and also in Enrollment summary screen for Intial policy for Pay in Arrears group
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    Then "Automation_vjuoOzxT4" is entered in "Search Group Name"
    And "View" is clicked
    And "Billing Reports" is clicked
    Then "Download" is clicked

#@Regression
  Scenario: Verify per pay cyclefor a Pet and also in Enrollment summary screen for renewed policy for Pay in Arrears group
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    Then "Automation_vjuoOzxT4" is entered in "Search Group Name"
    And "View" is clicked
    And "Billing Reports" is clicked
    Then "Download" is clicked

#@Regression
  Scenario: Verify per pay cycle for a Pet and also in Enrollment summary screen for Intial policy for Pay in advance group
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    Then "Automation_vjuoOzxT4" is entered in "Search Group Name"
    And "View" is clicked
    And "Billing Reports" is clicked
    Then "Download" is clicked

#@Regression
  Scenario: Verify per pay cycle for a Pet and also in Enrollment summary screen for renewed policy for Pay in Advance group
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    Then "Automation_vjuoOzxT4" is entered in "Search Group Name"
    And "View" is clicked
    And "Billing Reports" is clicked
    Then "Download" is clicked

#@Regression
  Scenario: Verify Payroll deduction file at Employee level shows Group credit available will be displayed on "unapplied funds" column Credit will be displayed as a negative value for Intial policy for a Group " Pay in Arrears"
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    Then "Automation_vjuoOzxT4" is entered in "Search Group Name"
    And "View" is clicked
    And "Billing Reports" is clicked
    Then "Download" is clicked
