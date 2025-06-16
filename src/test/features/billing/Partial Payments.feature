#@Regression
Feature: Changes to prevent auto-remit time-outs

  #@Regression
  Scenario: Verify when providing negative amount in employee amount deducted/employer amount credited column in remittance file, system should throw error in template files dashboard as "Employee_Amount_Deducted must be greater than or equal to zero for Employee number E1."
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
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
    And "Upload Remittance File Option" is clicked
    And "src//test//testData//Remittance_1.csv" is uploaded at "File Upload"
    And "Done Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Group Link" is clicked
    Then "View Template Files" is clicked

    #@Regression
  Scenario: Verify when providing employee amount deducted/employer amount credited value greater than amount currently owed in remittance file, system should throw error in template files dashboard as "Employee level sum should be between 0 and 11.19 for employee number E1."
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
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
    And "Upload Remittance File Option" is clicked
    And "src//test//testData//Remittance_1.csv" is uploaded at "File Upload"
    And "Done Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Group Link" is clicked
    Then "View Template Files" is clicked

    #@Regression
  Scenario: Verify when providing employee amount deducted/employer amount credited value greater than 0 and less than amount currently owed in remittance file, file should get uploaded successfully
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
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
    And "Upload Remittance File Option" is clicked
    And "src//test//testData//Remittance_1.csv" is uploaded at "File Upload"
    And "Done Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Group Link" is clicked
    Then "View Template Files" is clicked

    #@Regression
  Scenario: Verify when providing 0 amount for both employee amount deducted/employer amount credited column in remittance file, system should throw error in template files dashboard as "Nothing to remit as amount dues and group credit used are zero."
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
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
    And "Upload Remittance File Option" is clicked
    And "src//test//testData//Remittance_1.csv" is uploaded at "File Upload"
    And "Done Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Group Link" is clicked
    Then "View Template Files" is clicked

    #@Regression
  Scenario: Verify when 1st cycle is partially paid (Emp1 - $5) and 2nd bill generated in BILLED state, in payroll deduction report Emp1 for 1st cycle amount due should be $5 and for second cycle employee amount due should be $10
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
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
    And "27.49" is entered in "Confirm Amount Input"
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
    And "Download" is clicked
    
    #@Regression
  Scenario: Verify when 1st cycle is partially paid (Emp1 - $50 with $0.01 in outstanding balance) and 2nd bill generated in BILLED state, in payroll deduction report Emp1 for 1st cycle amount due should be visible as $0.01
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
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
    And "27.49" is entered in "Confirm Amount Input"
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
    And "Download" is clicked

    #@Regression
  Scenario: Verify now 2nd cycle is partially paid (Emp1 - $50.01 incl 1st cycle outstanding balance via remittance file upload) and 3rd bill generated in BILLED state(with 0.01 still outstanding), in payroll deduction report only partially paid 2nd cycle and 3rd cycle records with full amount due will be present
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
    And "27.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Group Link" is clicked
    And "View" is clicked
    And Select New Payroll Date for 3 month
    And "Billing Reports" is clicked
    And "Download" is clicked

    #@Regression
  Scenario: Verify on partially paying a partially paid bill (i.e Emp1 - $7 paid out of $20 for 1st cycle & $5 paid out of outstanding $13 in 2nd cycle for same emp), system will show $8 of 1st cycle and $20 as amount due of 2nd cycle
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
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
    And "27.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Group Link" is clicked
    And "View" is clicked
    And Select New Payroll Date for 2 month
    And "Billing Reports" is clicked
    And "Download" is clicked

    #@Regression
  Scenario: Verify bill is in UNSETTLED AMOUNTS state where employee premium is partially paid, later same bill is paid fully with pending employee premium and bill status changes to PAID
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
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
    And "27.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked

    #@Regression
  Scenario: Verify partially paid employee(of 1st cycle) is again partially paid in 2nd cycle and adjustment is added for 2nd cycle in remittance file, then unpaid employees premium + adjustment will be added in outstanding balance of next bill (in reconcilation report in total outstanding balance column)
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
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
    And "27.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Group Link" is clicked
    And "View" is clicked
    And Select New Payroll Date for 2 month
    And "Billing Reports" is clicked
    And "Download" is clicked

    #@Regression
  Scenario: Verify 2 bills in PAID status and when new pet2 is added for emp1 effective 3rd cycle with 3rd bill generated, now pet2 premium is unpaid while remitting 3rd bill, hence bill3 should be partially paid with outstanding balance of pet2 visible in bill3 and amount due of pet2 visible
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
    And "27.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Group Link" is clicked
    And "View" is clicked
    And Select New Payroll Date for 3 month
    And "Billing Reports" is clicked
    And "Download" is clicked

    #@Regression
  Scenario: Verify 2 bills in PAID status and when new Emp2 is added effective 3rd cycle with 3rd bill generated, now Emp2 premium is unpaid while remitting 3rd bill, hence bill3 should be partially paid with outstanding balance of Emp2 visible in bill3 and amount due of emp2 visible
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
    And "27.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Group Link" is clicked
    And "View" is clicked
    And Select New Payroll Date for 3 month
    And "Billing Reports" is clicked
    And "Download" is clicked

    #@Regression
  Scenario: Verify partially paid employee(of 1st cycle) is again partially paid in 2nd cycle and adjustment is added for 2nd cycle in remittance file with bill in UNSETTLED AMOUNTS state, later in next bill when all pending dues are paid bill status should change to PAID
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
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
    And "27.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Group Link" is clicked
    And "View" is clicked
    And Select New Payroll Date for 2 month
    And "Billing Reports" is clicked
    And "Download" is clicked

    #@Regression
  Scenario: Verify in the invoice generated the amount due on the system should be equal to the amount due - amount deducted (instead of simply the value of the amount due column)
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
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
    And "27.49" is entered in "Confirm Amount Input"
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
    And "Download" is clicked

    #@Regression
  Scenario: Verify when 1st bill is PARTIALLY PAID & 2nd bill is BILLED then in invoice generated the rows for both Partially paid and BILLED status bills will be shown
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
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
    And "27.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Group Link" is clicked
    And "View" is clicked
    And Select New Payroll Date for 2 month
    And "Billing Reports" is clicked
    And "Download" is clicked

    #@Regression
  Scenario: Verify when 1st cycle is partially paid (Emp1 - $50 with $0.01 in outstanding balance) and 2nd bill generated in BILLED state, in payroll deduction report and invoice Emp1 for 1st cycle amount due(past due in invoice) should be visible as $0.01 and for second cycle employee amount due(past due in invoice) should be $50.01
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
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
    And "27.49" is entered in "Confirm Amount Input"
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Add Button" is clicked
    And "Group Link" is clicked
    And wait for 9 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Group Link" is clicked
    And "View" is clicked
    And Select New Payroll Date for 2 month
    And "Billing Reports" is clicked
    And "Download" is clicked