Feature: Proto-Write_Offs

  @Regression
  Scenario: Verify the valid values provided for the write-offs.
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    And Verify "src//test//testData//Remittance_adjustment_writeoff.csv" file is updated for "Remittance_adjustment_writeoff.csv"
    And wait for 10 seconds "for loading group dashboard"
    And "Remit Button" is clicked
    And "Payment Type Input" is clicked
    And "Select Payment Method" is clicked
    And "Remittance Method Type Input" is clicked
    And "Upload Remittance File Option" is clicked
    And wait for 10 seconds "Upload Remittance"
    And "src//test//testData//Remittance_adjustment_writeoff.csv" is uploaded at "File Upload"
    And wait for 30 seconds "Upload Remittance"
    And "Done Button" is clicked
    And wait for 10 seconds "for loading group dashboard"
    And "Billing Dashboard" is clicked
    And wait for 10 seconds "for loading billing dashboard"
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "REMITTED"

  #@Regression
  Scenario: Verify the invalid values provided for the write-offs.
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
    And wait for 10 seconds "Upload Remittance"
    And "src//test//testData//Remittance_adjustment_writeoff.csv" is uploaded at "File Upload"
    And wait for 10 seconds "Upload Remittance"
    Then "Error Message" is displayed

  #@Regression
  Scenario: Verify if the previous cycle was unpaid for the next paying Bill user can provide the previous cycle value as write-offs.
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    And Verify "src//test//testData//Remittance_adjustment_writeoff_partial_pay.csv" file is updated for "Remittance_adjustment_writeoff_partial_pay.csv"
    And wait for 10 seconds "for loading group dashboard"
    And "Remit Button" is clicked
    And "Payment Type Input" is clicked
    And "Select Payment Method" is clicked
    And "Remittance Method Type Input" is clicked
    And "Upload Remittance File Option" is clicked
    And wait for 10 seconds "Upload Remittance"
    And "src//test//testData//Remittance_adjustment_writeoff_partial_pay.csv" is uploaded at "File Upload"
    And wait for 30 seconds "Upload Remittance"
    And "Done Button" is clicked
    And wait for 10 seconds "for loading group dashboard"
    And "Billing Dashboard" is clicked
    And wait for 10 seconds "for loading billing dashboard"
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And "Accounts Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading billing dashboard"
    And "Confirm" is clicked
    And "17.49" is entered in "Confirm Amount Input"
    And "01" is entered in "Month Input"
    And "25" is entered in "Day Input"
    And "2026" is entered in "Year Input"
    And "Add Button" is clicked
    And "17.49" is entered in "Control Amount"
    And "Submit Confirmations" is clicked
    And web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked  
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 10 seconds "for loading group dashboard"
    And "View" is clicked
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    And Verify "src//test//testData//Remittance_adjustment_writeoff_1.csv" file is updated for "Remittance_adjustment_writeoff_1.csv"
    And wait for 10 seconds "for loading group dashboard"
    And "Remit Button" is clicked
    And "Payment Type Input" is clicked
    And "Select Payment Method" is clicked
    And "Remittance Method Type Input" is clicked
    And "Upload Remittance File Option" is clicked
    And wait for 10 seconds "Upload Remittance"
    And "src//test//testData//Remittance_adjustment_writeoff_1.csv" is uploaded at "File Upload"
    And wait for 30 seconds "Upload Remittance"
    And "Done Button" is clicked
    And wait for 10 seconds "for loading group dashboard"
    And "Billing Dashboard" is clicked
    And wait for 10 seconds "for loading billing dashboard"
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "REMITTED"

  #@Regression
  Scenario: Verify behavior in the billing cycle with an existing write-off that has a pet addition retroactively applied.
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Groups Dashboard"
    And wait for 10 seconds "for loading group dashboard"
    And "View" is clicked
    And "Add Pet Button" is clicked 
    And "Reason For Adding Pet" is clicked using action class
    And wait for 5 seconds "for loading options"
    And "Select Reason for Late Enrollment" is clicked 
    And "Pet Species" is clicked using action class
    And "Select Pet Species" is clicked
    And "New Dog" is entered in "Pet Name"
    And "Pet Age" is clicked using action class
    And "Select Pet Age" is clicked
    And "2" is entered in "Pet Weight"
    And "Pet Breed" is clicked using action class
    And "Select Pet Breed" is clicked
    And "Pet Acquisition Date" is clicked
    And "Calculate Premium" is clicked
    And "Calendar Button 1" is clicked
    And "Select Mid Date Of Month" is clicked
    And "Agree MPI" is clicked
    And "Agree FW" is clicked
    And "Agree AA" is clicked
    And "Premium Changes" is clicked
    And "Agree EC" is clicked
    And wait for 5 seconds "for submit"
    And "Submit Button" is clicked
    And "Yes Button" is clicked
    And wait for 10 seconds "for loading group dashboard"
    And web browser is landed on the "Groups Dashboard"
    And "Life Events" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading group dashboard"
    And "Assign To" is clicked
    And "Megha Dhotarkar" is entered in "Assign To User"
    And "Megha Dhotarkar" is clicked
    And "Submit Button" is clicked
    And wait for 10 seconds "for loading group dashboard"
    And "View Group" is clicked
    And "Approve QLE" is clicked
    And "Calendar Button 1" is clicked
    And "Select Mid Date Of Month" is clicked
    Then "Submit Button" is clicked
    And web browser is landed on the "Groups Dashboard"
    And wait for 30 seconds "for loading group dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And "View" is clicked
    And "Billing Reports" is clicked
    And wait for 10 seconds "for loading group dashboard"
    And "ReGenerate Payroll Deduction Report" is clicked
    And "Yes Button" is clicked
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "74.98" and bill status changes to "BILLED"
    And Verify "src//test//testData//Remittance_adjustment_writeoff_retro_pet.csv" file is updated for "Remittance_adjustment_writeoff_retro_pet.csv"
    And wait for 10 seconds "for loading group dashboard"
    And "Remit Button" is clicked
    And "Payment Type Input" is clicked
    And "Select Payment Method" is clicked
    And "Remittance Method Type Input" is clicked
    And "Upload Remittance File Option" is clicked
    And wait for 10 seconds "Upload Remittance"
    And "src//test//testData//Remittance_adjustment_writeoff_retro_pet.csv" is uploaded at "File Upload"
    And wait for 30 seconds "Upload Remittance"
    And "Done Button" is clicked
    And wait for 10 seconds "for loading group dashboard"
    And "Billing Dashboard" is clicked
    And wait for 10 seconds "for loading billing dashboard"
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    Then Verify paid amount shows "74.98" and bill status changes to "REMITTED"

  #@Regression
  Scenario: Verify behavior in the billing cycle with an existing write-off that has an employee addition retroactively applied.
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 1 month
    And wait for 5 seconds "for loading group dashboard"
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Groups Dashboard"
    And wait for 5 seconds "for loading group dashboard"
    And "Life Events" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading group dashboard"
    And "Assign To" is clicked
    And "Megha Dhotarkar" is entered in "Assign To User"
    And "Megha Dhotarkar" is clicked
    And "Submit Button" is clicked
    And wait for 10 seconds "for loading group dashboard"
    And "View Group" is clicked
    And "Approve QLE" is clicked
    And "Calendar Button 1" is clicked
    And "Select Mid Date Of Month" is clicked
    And "Submit Button" is clicked
    And web browser is landed on the "Groups Dashboard"
    And wait for 30 seconds "for loading group dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And "View" is clicked
    And "Billing Reports" is clicked
    And wait for 10 seconds "for loading group dashboard"
    And "ReGenerate Payroll Deduction Report" is clicked
    And "Yes Button" is clicked
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "74.98" and bill status changes to "BILLED"
    And Verify "src//test//testData//Remittance_adjustment_writeoff_retro_emp.csv" file is updated for "Remittance_adjustment_writeoff_retro_emp.csv"
    And wait for 10 seconds "for loading group dashboard"
    And "Remit Button" is clicked
    And "Payment Type Input" is clicked
    And "Select Payment Method" is clicked
    And "Remittance Method Type Input" is clicked
    And "Upload Remittance File Option" is clicked
    And wait for 10 seconds "Upload Remittance"
    And "src//test//testData//Remittance_adjustment_writeoff_retro_emp.csv" is uploaded at "File Upload"
    And wait for 30 seconds "Upload Remittance"
    And "Done Button" is clicked
    And wait for 10 seconds "for loading group dashboard"
    And "Billing Dashboard" is clicked
    And wait for 10 seconds "for loading billing dashboard"
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    Then Verify paid amount shows "74.98" and bill status changes to "REMITTED"

  #@Regression
  Scenario: Verify behavior when an employee is provided with a write-off for a given cycle and then the plan is changed. 
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    And Verify "src//test//testData//Remittance_adjustment_writeoff.csv" file is updated for "Remittance_adjustment_writeoff.csv"
    And wait for 10 seconds "for loading group dashboard"
    And "Remit Button" is clicked
    And "Payment Type Input" is clicked
    And "Select Payment Method" is clicked
    And "Remittance Method Type Input" is clicked
    And "Upload Remittance File Option" is clicked
    And wait for 10 seconds "Upload Remittance"
    And "src//test//testData//Remittance_adjustment_writeoff.csv" is uploaded at "File Upload"
    And wait for 30 seconds "Upload Remittance"
    And "Done Button" is clicked
    And wait for 10 seconds "for loading group dashboard"
    And "Billing Dashboard" is clicked
    And wait for 10 seconds "for loading billing dashboard"
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And "Accounts Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading billing dashboard"
    And "Confirm" is clicked
    And "33.49" is entered in "Confirm Amount Input"
    And "01" is entered in "Month Input"
    And "25" is entered in "Day Input"
    And "2026" is entered in "Year Input"
    And "Add Button" is clicked
    And "33.49" is entered in "Control Amount"
    And "Submit Confirmations" is clicked
    And web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked  
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 10 seconds "for loading group dashboard"
    And "View" is clicked
    And wait for 10 seconds "for loading group"
    And "View" is clicked
    And wait for 10 seconds "for loading group"
    And "Actions Button" is clicked
    And "Change Employee Plan" is clicked
    And "Submit Button" is clicked
    And browser is navigated to previous page
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And wait for 20 seconds "for loading group"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    Then Verify paid amount shows "29.09" and bill status changes to "BILLED"
    And "4.4" is displayed at "Credit Available"

  #@Regression
  Scenario: Verify behavior when an employee is provided with a write-off for a given cycle and then the employee is retro terminated.
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 1 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    And Verify "src//test//testData//Remittance_adjustment_writeoff.csv" file is updated for "Remittance_adjustment_writeoff.csv"
    And wait for 10 seconds "for loading group dashboard"
    And "Remit Button" is clicked
    And "Payment Type Input" is clicked
    And "Select Payment Method" is clicked
    And "Remittance Method Type Input" is clicked
    And "Upload Remittance File Option" is clicked
    And wait for 10 seconds "Upload Remittance"
    And "src//test//testData//Remittance_adjustment_writeoff.csv" is uploaded at "File Upload"
    And wait for 30 seconds "Upload Remittance"
    And "Done Button" is clicked
    And wait for 10 seconds "for loading group dashboard"
    And "Billing Dashboard" is clicked
    And wait for 10 seconds "for loading billing dashboard"
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And "Accounts Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading billing dashboard"
    And "Confirm" is clicked
    And "33.49" is entered in "Confirm Amount Input"
    And "01" is entered in "Month Input"
    And "25" is entered in "Day Input"
    And "2026" is entered in "Year Input"
    And "Add Button" is clicked
    And "33.49" is entered in "Control Amount"
    And "Submit Confirmations" is clicked
    And web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked  
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 10 seconds "for loading group dashboard"
    And "View" is clicked
    And wait for 10 seconds "for loading group"
    And "Terminate Employee Button" is clicked
    And "Yes Button" is clicked
    And "Select Termination Date" is clicked
    And "Select Mid Date Of Month" is clicked
    And "Termination Type" is clicked
    And "Select Termination Type" is clicked
    And "Submit Button" is clicked
    And wait for 5 seconds "for loading group dashboard"
    And "Life Events" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading group dashboard"
    And "Assign To" is clicked
    And "Megha Dhotarkar" is entered in "Assign To User"
    And "Megha Dhotarkar" is clicked
    And "Submit Button" is clicked
    And wait for 10 seconds "for loading group dashboard"
    And "View Group" is clicked
    And "Approve QLE" is clicked
    And "Calendar Button 1" is clicked
    And "Select Mid Date Of Month" is clicked
    And "Submit Button" is clicked
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And wait for 10 seconds "for loading billing dashboard"
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 10 seconds "for loading billing dashboard"
    And "Show more details" is clicked
    And wait for 5 seconds "for loading billing dashboard"
    Then "33.49" is displayed at "Pending Retro Credit"
