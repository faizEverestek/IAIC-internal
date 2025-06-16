#@Regression 
Feature: Add capability to track/submit/view billing notes

  Background: User is logged in
    When web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "ENH.247.1 (DO NOT EDIT)" is entered in "Search Group Name"
    And wait for 9 seconds "for loading group dashboard"
    And "View" is clicked
    And "Three Dots Action" is clicked
    And "Add Notes" is clicked
    And "Add Note Categories" is clicked
    And "Admin Benbroker Changes" is clicked
    And "Add Note Payroll Cycle" is clicked
    And "Select Payroll Cycle" is clicked
    And "This is test comment for dummy note" is entered in "Add Note Comment"
    And "Submit Button" is clicked

  @Regression
  Scenario: Verify IAIC admin/Super admin can create/submit billing notes for a group.
    And "Notes Selection" is clicked
    And "Delete Note" is clicked
    Then "Yes Button" is clicked

  #@Regression 
  Scenario: Verify IAIC admin/Super admin can view consolidated billing notes submitted for each bill in one place
    And "Notes Selection" is clicked
    And "Delete Note" is clicked
    Then "Yes Button" is clicked

  #@Regression 
  Scenario: Verify IAIC admin/Super admin have ability to view all billing notes created by other IAIC admin/Super admin for a group.
    And "Notes Selection" is clicked
    And "Delete Note" is clicked
    Then "Yes Button" is clicked
