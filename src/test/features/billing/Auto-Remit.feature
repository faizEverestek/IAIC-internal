#@Regression
Feature: Changes to prevent auto-remit time-outs

  #@Regression
  Scenario: Verify for large groups when auto-remit is done till the processing is not completed the Remit button should be disabled in Billing dashboard
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

    #@Regression
  Scenario: Verify for large groups when auto-remit is done in one page and other page we open billing dashboard remit button should be disabled and when we go back to auto remit page and click again on SUbmit button error message should be thrown
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is enabled

    #@Regression
  Scenario: Verify for large groups when 'Upload remittance file' is done till the processing is not completed the Remit button should be disabled in Billing dashboard
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
  Scenario: Verify if employee is retro added effective 1st cycle and currently 4th cycle is going on(4bills in BILLED state), while auto-remit of 1st bill the retro added employee should not be included in remittance file of 1st bill
    When "IAIC Administered" group is created manually by iaic admin
    And Select New Payroll Date for 1 month
    And Verify employee added & "Enrolled"
    Then Select New Payroll Date for 4 month

    #@Regression
  Scenario: Verify if employee is retro added effective 2nd cycle and currently 4th cycle is going on(4bills in BILLED state), while auto-remit of 1st & 2nd bill the retro added employee should not be included in remittance file of 1st bill
    When "IAIC Administered" group is created manually by iaic admin
    And Select New Payroll Date for 1 month
    And Verify employee added & "Enrolled"
    Then Select New Payroll Date for 4 month

    #@Regression
  Scenario: Verify 4 bills are in PAID state and 5th bill in BILLED state ,then employee is retro added effective 1st cycle,while auto-remit of 5th bill the retro added employee should be included in remittance file effective which it was added
    When "IAIC Administered" group is created manually by iaic admin
    And Select New Payroll Date for 4 month
    And Verify employee added & "Enrolled"
    Then Select New Payroll Date for 5 month

    #@Regression
  Scenario: Verify if pet is retro added effective 4th cycle and currently 8th cycle is going on, while auto-remit of 4th bill the retro added pet should not be included in remittance file of 4th bill
    When "IAIC Administered" group is created manually by iaic admin
    And Select New Payroll Date for 4 month
    And Verify employee added & "Enrolled"
    Then Select New Payroll Date for 8 month

    #@Regression
  Scenario: Verify for PDBA groups if employee/pet is retro added effective 1st cycle and currently 4th cycle is going on(4bills in BILLED state), while auto-remit of 1st bill the retro added employee should not be included in remittance file of 1st bill
    When "Ben Admin Administered" group is created manually by iaic admin
    And web browser is landed on the "Add Employee Page"
    And "Add Employee" is clicked
    And "Employee Census Type" is clicked
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
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
  Scenario: Verify when employee is retro added effective 1st cycle and retro terminated effective 2nd cycle and 3rd cycle is going on (3bills in BILLED state), while auto-remit of 1st & 2nd bill the retro added employee should not be included in remittance file and on auto-remit of 3rd bill it will only show 1st and 2nd cycle premium
    When "IAIC Administered" group is created manually by iaic admin
    And Select New Payroll Date for 1 month
    And Verify employee added & "Enrolled"
    Then Select New Payroll Date for 2 month

    #@Regression
  Scenario: Verify for renewal groups if employee/pet is retro added effective 1st cycle and currently 4th cycle is going on(4bills in BILLED state), while auto-remit of 1st bill the retro added employee should not be included in remittance file of 1st bill
    When "IAIC Administered" group is created manually by iaic admin
    And Verify "IAIC Administered" group is renewed
    And Select New Payroll Date for 1 month
    Then Select New Payroll Date for 4 month
    
      #@Regression
  Scenario: Verify 'Upload remittance' option is not showing in groups dashboard.
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
    Then "Upload Remittance File Option" is displayed

  #@Regression
  Scenario: Verify in billing dashboard there should be a 'Remit' button displaying an upload icon (display in green, third from left)
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is displayed

  #@Regression
  Scenario: Verify by clicking on 'Remit' button, Two dropdown options will get displayed
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is displayed

  @Regression
  Scenario: Verify 'Remit' button is present when remitting for the re-generated payroll deduction report for the oldest unpaid billing period for a specific group.
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And wait for 10 seconds "for loading billing dashboard"
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
  Scenario: Verify The ‘Auto Remittance’ option should not appear once a bill has already been remitted.
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
    Then "Confirm" is clicked

  #@Regression
  Scenario: Verify for PDBA groups, 'Remit' button is present when remitting for the most recently generated / auto-generated for the oldest unpaid billing period for a specific group.
    When "Ben Admin Administered" group is created manually by iaic admin
    And web browser is landed on the "Add Employee Page"
    And "Add Employee" is clicked
    And "Employee Census Type" is clicked
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    And Select New Payroll Date for 2 month
    And web browser is landed on the "Billing Page"
    And "Billing Dashboard" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And Verify paid amount shows "37.49" and bill status changes to "BILLED"
    Then "Remit Button" is clicked

  #@Regression
  Scenario: Verify users should be able to auto-remit bill which contain unsettled amounts from previous billing periods
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
    Then "Confirm" is clicked