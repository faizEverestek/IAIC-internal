#@Regression @smoke
Feature: Life Events - QLE

#@Regression
  Scenario: Verify IAIC admin can Assign/unassign a QLE
    When "IAIC Administered" group is created manually by iaic admin
    And Select New Payroll Date for 2 month
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Groups Dashboard"
    And "Life Events" is clicked
    And Verify "Filter Button" is clicked
    And wait for 5 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Assign To" is clicked
    And "Megha Dhotarkar" is entered in "Assign To User"
    And "Megha Dhotarkar" is clicked
    And "Submit Button" is clicked

 #@Regression
  Scenario: Verify  Employee late enrollment creates a late enrollment QLE and QLE is Declined
    When "IAIC Administered" group is created manually by iaic admin
    And Select New Payroll Date for 2 month
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Groups Dashboard"
    And "Life Events" is clicked
    And Verify "Filter Button" is clicked
    And wait for 5 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Assign To" is clicked
    And "Megha Dhotarkar" is entered in "Assign To User"
    And "Megha Dhotarkar" is clicked
    And "Submit Button" is clicked
    And wait for 5 seconds "for loading group dashboard"
    And "View Group" is clicked
    And "Decline QLE" is clicked
    And "Decline Reason QLE" is clicked
    And "Select Decline Reason QLE" is clicked
    And "Submit Button" is clicked

#@Regression
  Scenario: Verify IAIC admin /Employer/Employee/Ben admin can Create Add pet QLE
    When "IAIC Administered" group is created manually by iaic admin
    And Select New Payroll Date for 2 month
    And Verify employee added & "Enrolled"

@Regression
  Scenario: Verify IAIC admin can approve add pet QLE
    When "IAIC Administered" group is created manually by iaic admin
    And Select New Payroll Date for 2 month
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Groups Dashboard"
    And "Life Events" is clicked
    And Verify "Filter Button" is clicked
    And wait for 5 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And wait for 5 seconds "for loading group dashboard"
    And "Assign To" is clicked
    And "Megha Dhotarkar" is entered in "Assign To User"
    And "Megha Dhotarkar" is clicked
    And "Submit Button" is clicked
    And wait for 5 seconds "for loading group dashboard"
    And "View Group" is clicked
    And "Approve QLE" is clicked
    And "Calendar Button 1" is clicked
    And "Select Mid Date Of Month" is clicked
    Then "Submit Button" is clicked

   # #@Regression
  Scenario: Verify Add pet QLE is Declined by IAIC admin
    When "IAIC Administered" group is created manually by iaic admin
    And Select New Payroll Date for 2 month
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Groups Dashboard"
    And "Life Events" is clicked
    And Verify "Filter Button" is clicked
    And wait for 5 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Assign To" is clicked
    And "Megha Dhotarkar" is entered in "Assign To User"
    And "Megha Dhotarkar" is clicked
    And "Submit Button" is clicked
    And wait for 5 seconds "for loading group dashboard"
    And "View Group" is clicked
    And "Decline QLE" is clicked
    And "Decline Reason QLE" is clicked
    And "Select Decline Reason QLE" is clicked
    Then "Submit Button" is clicked

#@Regression
  Scenario: Verify IAIC admin can add documents to QLE
    When "IAIC Administered" group is created manually by iaic admin
    And Select New Payroll Date for 2 month
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Groups Dashboard"
    And "Life Events" is clicked
    And Verify "Filter Button" is clicked
    And wait for 5 seconds "for loading group dashboard"
    And "Search Group Name" is search for group
    And "Assign To" is clicked
    And "Megha Dhotarkar" is entered in "Assign To User"
    And "Megha Dhotarkar" is clicked
    And "Submit Button" is clicked
    And wait for 5 seconds "for loading group dashboard"
    And "View Group" is clicked
    Then "Add Document Button" is clicked