#@Regression
Feature: Ben Admin & Group Creation - Pet Demographics

  Background: User is logged in
    When web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked

  #@Regression
  Scenario: Verify while creating a Ben Admin, user can select the checkbox of 'PET DEMOGRAPHICS POST ENROLLMENT' for the post enrollment flow to be enabled
    And "Ben Admin Link" is clicked
    And "Create Ben Admin" is clicked
    Then "Post Enrollment Checkbox" is clicked

  #@Regression
  Scenario: Verify while editing a Ben Admin, user can unselect the checkbox of 'PET DEMOGRAPHICS POST ENROLLMENT' for the post enrollment flow to be disabled and normal enrollment will be considered for new groups
    And "Ben Admin Link" is clicked
    And "Create Ben Admin" is clicked
    And "Post Enrollment Checkbox" is clicked
    Then "Post Enrollment Checkbox" is clicked
