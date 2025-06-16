#@Regression @smoke
Feature: Group Renewal

    #@Regression
   Scenario: Verify that IAIC admin should have the ability to view exact date of notification for renewals on the group details screen
     When "IAIC Administered" group is created manually by iaic admin
     And web browser is landed on the "Groups Dashboard"
     And "Three Dots Action" is clicked
     And "Create Renewal Link" is clicked

    #@Regression
   Scenario: Verify that if 'Create Renewal' is clicked for non-renewed group system should prompt user with message to confirm the renewal in a pop up confirmation, if clicked 'No' then renewal should be cancelled
     When "IAIC Administered" group is created manually by iaic admin
      And web browser is landed on the "Groups Dashboard"
     And "Three Dots Action" is clicked
     And "Create Renewal Link" is clicked
     Then "No Button" is clicked

  #@Regression
   Scenario: Verify that IAIC admin is able to edit below prepopulated fields during renewal process
     When "IAIC Administered" group is created manually by iaic admin
     And Verify "IAIC Administered" group is renewed

  #@Regression
   Scenario: Verify that IAIC admin should be able to cancel the renewed group before policy start date
     When "IAIC Administered" group is created manually by iaic admin
     And Verify "IAIC Administered" group is renewed
     And web browser is landed on the "Groups Dashboard"
     Then "Three Dots Action" is clicked

    #@Regression
   Scenario: Verify that if group is renewed and IAIC admin needs to cancel a group then IAIC admin should terminate the group
     When "IAIC Administered" group is created manually by iaic admin
     And Verify "IAIC Administered" group is renewed
     And web browser is landed on the "Groups Dashboard"
     Then "Three Dots Action" is clicked

  #@Regression
  Scenario: Verify Existing employees from past policy year as well as new hires added prior to open enrollment period will have to enroll on the platform during open enrollment
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Verify "IAIC Administered" group is renewed
    Then Verify employee added & "Enrolled"

  #@Regression
  Scenario: All Open QLE's should be declined and closed on last date of current policy period
    When "IAIC Administered" group is created manually by iaic admin
    And Select New Payroll Date for 2 month
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Groups Dashboard"
    And "Life Events" is clicked
    And Verify "Filter Button" is clicked
    And wait for 5 seconds "for loading group dashboard"
    And "Search Group Name" is search for group

#group
  Scenario: Verify IAIC admin will be able to add New hires in addition to existing employees of previous policy year
    When "IAIC Administered" group is created manually by iaic admin
    And Verify "IAIC Administered" group is renewed
    Then Verify employee added & "Enrolled"

    #@Regression
  Scenario: New hires can be added via a census file or manual entry
    When "IAIC Administered" group is created manually by iaic admin
    And Verify "IAIC Administered" group is renewed
    Then Verify employee added & "Enrolled"

#@Regression
  Scenario: System should provide user the ability to be redirected to add pet workflow for current policy year if new pet is added at renewal enrollment
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And Verify "IAIC Administered" group is renewed

#@Regression
   Scenario: Verify that terminate group option is avialable under Actions in group details for every active renewal group
     When "IAIC Administered" group is created manually by iaic admin
     And Verify "IAIC Administered" group is renewed
     And web browser is landed on the "Groups Dashboard"
     Then "Three Dots Action" is clicked
     Then "Terminate Group" is displayed

#@Regression
  Scenario: New hires added prior to open enrollment will also be notified of the open enrollment period approaching
    When "IAIC Administered" group is created manually by iaic admin
    And Verify "IAIC Administered" group is renewed
    Then Verify employee added & "Enrolled"

#@Regression
  Scenario: Verify that group credit if exists should be carry forward for renewal policy year
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Add Credit" is clicked
    And "Payment Type" is clicked
    And "Select Payment Method" is clicked
    And "1000" is entered in "Add Credit Amount"
    Then "Sign In" is clicked
    And Verify "IAIC Administered" group is renewed

#@Regression
  Scenario: Verify that if balance exists should be carry forward to renewal policy year
    When "IAIC Administered" group is created manually by iaic admin
    And Verify "IAIC Administered" group is renewed

 #@Regression
  Scenario: Verify when Group is Renewed and policy is not activated yet, If IAIC Super admin delete a Initial policy group then renewed group will also get deleted
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    Then Verify "IAIC Administered" group is renewed
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Delete Group" is clicked
    And "Delete Confirm Button" is clicked
    Then "Delete Confirm Message" is displayed

 @Regression-QA
  Scenario: Verify that IAIC admin can Add and Delete employee in renewed policy group
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    Then Verify "IAIC Administered" group is renewed
    And web browser is landed on the "Groups Dashboard"
    And "Delete Employee Button" is clicked
    Then "Delete Confirm Button" is clicked

 #@Regression
  Scenario: Verify that IAIC admin can delete all employees from Renewed policy group only and not from initial policy group, when the group is nenewed and activated
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    Then Verify "IAIC Administered" group is renewed
    And web browser is landed on the "Groups Dashboard"
    And "Delete Employee Button" is clicked
   Then "Delete Confirm Button" is clicked

 #@Regression
  Scenario: IAIC admin called delete all employees from renewed policy group, employee record get deleted from renewed policy group only and not from parent group, when the group is renewed and not activated
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    Then Verify "IAIC Administered" group is renewed

  #@Regression
  Scenario: IAIC admin call delete all employees from initial policy group, employee record get deleted from   parent group as well as from renewed policy group, when the group is renewed and not activated
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    Then Verify "IAIC Administered" group is renewed