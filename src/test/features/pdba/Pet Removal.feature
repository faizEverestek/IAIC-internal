#@Regression 
Feature: Pet Removal - Pet Demographics

  Background: User is logged in
    When "Ben Admin Administered" group is created manually by iaic admin
    And web browser is landed on the "Add Employee Page"
    And "Add Employee" is clicked
    And "Employee Census Type" is clicked

  #@Regression
  Scenario: Verify employee with multiple pet's in system, remove pet (same species) via Post enrollment file upload.
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"
    And Upload Post Enrollment File "Pet Level Removal"


  #@Regression
  Scenario: Verify employee with multiple pet's in system, remove pet (Different species) via Post enrollment file upload.
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"
    And Upload Post Enrollment File "Pet Level Removal"

  #@Regression
  Scenario: Verify employee removes the only Pet via Post enrollment file upload
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"
    And Upload Post Enrollment File "Pet Level Removal"

  #@Regression
  Scenario: Verify pet should not get remove if user gives wrong date in 'Pet effective date' column
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"
    And Upload Post Enrollment File "Pet Level Removal"

  #@Regression
  Scenario: Verify after removing pet(Dog species), At confirmation screen employee login 'Remove pet' option should be displayed for dog species.
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify after removing pet(Cat species), At confirmation screen employee login 'Remove pet' option should be displayed for Cat species.
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"
    And Upload Post Enrollment File "Pet Level Removal"
