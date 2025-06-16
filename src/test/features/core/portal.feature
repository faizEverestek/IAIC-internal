#@Regression @smoke
Feature: Portal

  #@Regression
  Scenario: IAIC admin must have the ability to upload and view files associated to a group as "Educational Material"
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    Then "Add Educational Material Link" is clicked

  #@Regression    
  Scenario: IAIC admin must have the ability to uploaded  and Remove files associated to a group as "Educational Material"
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    Then "Add Educational Material Link" is clicked

  #@Regression    
  Scenario: IAIC admin must have the ability to Remove uploaded Video
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    Then "Add Educational Material Link" is clicked

  #@Regression    
  Scenario: Payroll Deduction report  : IAIC Admin Re-Run the Payroll Deduction report
    And web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    Then "Automation_vjuoOzxT4" is entered in "Search Group Name"
    And "View" is clicked
    And "Billing Reports" is clicked
    And "Payroll Deduction Type" is clicked
    Then "Download" is clicked

  #@Regression    
  Scenario: Verify changing First Name & Last Name to update the details of employee
    And web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    Then "Automation_vjuoOzxT4" is entered in "Search Group Name"
    And "View" is clicked
    And "Add Employee" is clicked
    And "Employee Census Type" is clicked

   #@Regression    
  Scenario: Verify Uploading the same census file without any change. Ben broker already exist and an employee is already enrolled with same email id of ben broker
    And web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    Then "Automation_vjuoOzxT4" is entered in "Search Group Name"
    And "View" is clicked
    And "Add Employee" is clicked
    And "Employee Census Type" is clicked

  #@Regression    
  Scenario: Verify IAIC admin can add previously deleted employee to a group.
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Groups Dashboard"
    And "Delete Employee Button" is clicked
    Then "Delete Confirm Button" is clicked

  #@Regression    
  Scenario: Allow IAIC to Clear Employees from A Group using “Delete All Employees” option for initial policy group
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    Then "Add Educational Material Link" is clicked
    Then "Remove All Employees" is clicked
    Then "Delete Confirm Button" is clicked
    Then "Remove Employees Message" is displayed

  #@Regression    
  Scenario: Allow IAIC to Clear individual Employee from a Initial policy group
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    Then "Remove All Employees" is clicked
    Then "Delete Confirm Button" is clicked
    Then "Remove Employees Message" is displayed

  #@Regression    
  Scenario: Verify IAIC Super admin can delete a group who's group status is In-Active
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Delete Group" is clicked
    And "Delete Confirm Button" is clicked
    Then "Delete Confirm Message" is displayed

  #@Regression    
  Scenario: Verify IAIC Super admin can delete a group who's group status is In progress
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Delete Group" is clicked
    And "Delete Confirm Button" is clicked
    Then "Delete Confirm Message" is displayed

  #@Regression    
  Scenario: Verify IAIC Super admin can delete a group who's group status is Group creation
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Delete Group" is clicked
    And "Delete Confirm Button" is clicked
    Then "Delete Confirm Message" is displayed

  #@Regression    
  Scenario: Verify IAIC Super admin can delete a group who's group status is Group Activation
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Delete Group" is clicked
    And "Delete Confirm Button" is clicked
    Then "Delete Confirm Message" is displayed

  #@Regression    
  Scenario: Verify IAIC Super admin can delete a group who's group status is Billing info required
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Delete Group" is clicked
    And "Delete Confirm Button" is clicked
    Then "Delete Confirm Message" is displayed

  #@Regression    
  Scenario: Verify IAIC Super admin can delete a group who's group status is Terminated
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Delete Group" is clicked
    And "Delete Confirm Button" is clicked
    Then "Delete Confirm Message" is displayed

  #@Regression    
  Scenario: Verify IAIC Super admin can delete a group who's group status is Policy Expired
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Delete Group" is clicked
    And "Delete Confirm Button" is clicked
    Then "Delete Confirm Message" is displayed

  #@Regression    
  Scenario: Verify IAIC Super admin can delete a group who's group status is Expired
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Delete Group" is clicked
    And "Delete Confirm Button" is clicked
    Then "Delete Confirm Message" is displayed
