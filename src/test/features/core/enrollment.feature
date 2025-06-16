#@Regression
Feature: Enrollment

  #@Regression
  Scenario: Verify enrollment button is getting shown correctly for employee. Date of hire of employee is with in the enrollment period  and first month period is unchecked
    When "IAIC Administered" group is created manually by iaic admin
    Then Verify employee added & "Enrolled"

  #@Regression
  Scenario: Verify  Group admin can enroll a employee (Enrollment - Group details )
    When "IAIC Administered" group is created manually by iaic admin
    Then Verify employee added & "Enrolled"

  #@Regression
  Scenario: Verify enrollment button is getting shown correctly for employee. Date of hire of employee before  the enrollment period  and first month period is unchecked
    When "IAIC Administered" group is created manually by iaic admin
    Then Verify employee added & "Enrolled"

  #@Regression
  Scenario: Verify IAIC admin can Promote existing employee to Group Admin
    And web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "auto_group_3242" is entered in "Search Group Name"
    And "View" is clicked
    And "Promote Button" is clicked
    And wait for 9 seconds "for loading billing dashboard"
    And "Promote Employee Drop Down" is clicked
    And "Select Admin" is clicked
    And "Promote 1" is clicked
    And "Remove Group Admin" is clicked
    Then "Remove Group Admin Button" is clicked