#@Regression
Feature: Midyear IAIC to PDBA Transitions: Behavior for each employee record

  @Regression
  Scenario: Verify IAIC Administered group is transitioned to PDBA group in mid year
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "auto" is entered in "Search Input"
    And wait for 3 seconds "for the Automation PDBA Option to be visible"
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked
    And wait for 3 seconds "to redirect to next page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    Then following elements with respective text values are present:
      | NAME             | VALUE            |
      | GROUP TYPE VALUE | Ben Administered |

  #@Regression
  Scenario: Verify only unirate groups can be transitioned to PDBA group or system will throw error
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify an employee already 'Enrolled' in IAIC group, should have demographics updated and pet counts should match the pets in PDBA group
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify if an employee was in 'Not Enrolled' state in IAIC group, that employee record will no longer be present in user portal after transition
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify if there were any employees in 'Pending' status in IAIC group, system should throw an error when the ben admin is selected and next is clicked while transition to PDBA group creation
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify if there were any employees in 'Failed to Enroll' status in IAIC group, system should throw an error when the ben admin is selected and next is clicked while transition to PDBA group creation
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify if there were any employees in 'Awaiting MGA status' in IAIC group, system should throw an error when the ben admin is selected and next is clicked while transition to PDBA group creation
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify If an employee was terminated and never had an enrollment in IAIC group, the employee will be deleted from portal and will not be visible in transitioned PDBA group
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify an employee terminated and never had an enrollment in IAIC group, after adding same employee email in transitioned PDBA group it will be added
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify if an employee was terminated but was previously enrolled in the policy term, the employee record will be updated just like the employee in transitioned PDBA group
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify if there were any employees with open QLEs in IAIC group, system should throw an error when the ben admin is selected and next is clicked while transition to PDBA group creation
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify renewal created for IAIC group but not activated and transitioned to PDBA, on changing group type to ben admin error message will be thrown 'A renewal term has already been created for this group. Please remove this renewal before proceeding.'
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify new pets can can be added and removed simultaneously from existing employees post transition
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify claim can be filed for existing pets post transition
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify mid year transition occurs after policy term 2 and verify the changes
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "auto" is entered in "Search Input"
    And wait for 3 seconds "for the Automation PDBA Option to be visible"
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify below retro cases on transitioned PDBA group and billing activities for the same
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify below retro cases before transitioned PDBA group ie effective initial IAIC group and billing activities for the same
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked

  #@Regression
  Scenario: Verify billing changes if Future date is set for new employee/existing pet and transition done before the dates set
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Select New Payroll Date for 5 month
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "Search Group Name" is search for group
    And wait for 9 seconds "for loading group dashboard"
    And "Edit" is clicked
    And "Ben Admin Dropdown" is clicked
    And "Ben Admin Administered" is clicked
    And "Search Input" is clicked
    And "Automation PDBA Option" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Next" is clicked
    And "Submit" is clicked