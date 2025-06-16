#@Regression 
Feature: Ben Broker

Background: User is logged in
  Background: User is logged in
    When web browser is landed on the "Groups Dashboard"
    And "Sign Out" is clicked using action class
    And "megha.dhotarkar+98@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked

  #@Regression
  Scenario: Verify that Ben broker  persona is able to view the life events (created by employee), All life events
    Then "Group Link" is displayed
    Then "Claims" is displayed
    Then "Life Events" is displayed

  #@Regression
  Scenario: Verify that Ben broker is able to add documents to test group 
    And "Group Link" is clicked
    Then "View" is clicked
    Then "Three Dots Action" is clicked
    Then "Add Educational Material" is clicked
    
#  #@Regression
#  Scenario: Ben Broker should be able Terminate Employee for groups which he associated
#    Then Validate Group Dashboard
#    Then Click on View Group
#    Then Click on Add Employee
#    Then Enter Values in Add Employee - Ben Broker
#    Then Validate Employee is Added
#    Then Terminate Employee - Ben Broker
#
#  #@Regression
#  Scenario: Verify that Ben broker is able to add a pet to an employee
#    Then Validate Group Dashboard
#    Then Click on View Group
#    Then QLE add pet
#
#  #@Regression
#  Scenario: Verify the user Ben broker/Ben admin  is able to Search by Employee Number in the Group details screen
#    Then Validate Group Dashboard
#    Then Click on View Group
#    Then Search by Employee Number "1140055"
#    Then Verify Employee ID
#
##@Regression
#  Scenario: Verify IAIC admin creating Ben Broker through 'Sub Producer' Tab when employee is available with same email id.
#    Then Validate Group Dashboard
#    Then Click on View Group
#    Then Verify employee have all the permission of Ben broker
#
##@Regression
#  Scenario: Verify IAIC admin can add employee via Census file containing same email id of existing Ben broker to a Group
#    Then Validate Group Dashboard
#    Then Click on View Group
#    Then Verify system navigates to landing page of Employee as a Ben Broker role
#
##@Regression
#  Scenario: Verify IAIC admin can add employee with Manual input and entering same email id of existing Ben broker
#    Then Validate Group Dashboard
#    Then Click on View Group
#    Then Verify system navigates to landing page of Employee as a Ben Broker role
#
##@Regression
#  Scenario: Verify Ben broker can enroll himself as employee, add pet, submit claim to a same group
#    Then Validate Group Dashboard
#    Then Click on View Group
#    Then Verified Ben broker can enroll himself as employee "Emp 11"
#
##@Regression
#  Scenario: Verify Ben-Broker maintain current functionality of being an administrator associated to multiple groups
#    Then Validate Group Dashboard
#    Then Verify Ben broker have access to all permissions for associated groups
#
#  #@Regression
#  Scenario: Verify that Delete Group option is not available for Ben broker
#    Then Validate Group Dashboard
#    Then Click on View Group
#    Then Verify that Delete Group option is not available
#
#  #@Regression
#  Scenario: Verify Ben broker can access to the Test 50 group which all employees has been deleted
#    Then Validate Group Dashboard
#    Then Verify Ben broker have access to all permissions for associated groups
#
#  #@Regression
#  Scenario: Verify Employer, Employee, Ben broker , Ben Admin  do not have access to view or submit notes against any group
#    Then Validate Group Dashboard
#    Then Click on View Group
#    Then Verify Add Notes is not available in Action