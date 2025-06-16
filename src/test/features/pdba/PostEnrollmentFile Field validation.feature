#@Regression
Feature: PostEnrollmentFile Field validation - Pet Demographics

  Background: User is logged in
    When "Ben Admin Administered" group is created manually by iaic admin
    And web browser is landed on the "Add Employee Page"
    And "Add Employee" is clicked
    And "Employee Census Type" is clicked

  #@Regression
  Scenario: Verify the Post Enrollment file will be same as an enrollment file with 'Emp_EffectiveDate' as new column and if its not provided error will be raised
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Upload Post Enrollment File "PostEnrollmentFile_Validation"

  #@Regression
  Scenario: Verify If while upload of post Enrollment file with existing employee 'Email ID', System should throw error for that record and other correct record should get uploaded.
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Upload Post Enrollment File "PostEnrollmentFile_Validation"

  #@Regression
  Scenario: Verify system throws error message for invalid Group Number, Pet Species, Plan provided in enrollment file
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Upload Post Enrollment File "PostEnrollmentFile_Validation"

  #@Regression
  Scenario: Verify system throws error message for invalid 'Emp_EffectiveDate' that does not match with current payroll cycle start date or payroll cycle end date
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Upload Post Enrollment File "PostEnrollmentFile_Validation"

  #@Regression
  Scenario: Verify through Post enrollment file upload user can 'Add and enroll new employee' to the group and verify Pet Age,Weight,Breed & Name fields is ignored and only Species, Coverage & Plan price will be displayed in UI
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Upload Post Enrollment File "PostEnrollmentFile_Validation"

  #@Regression
  Scenario: Verify if employee’s First and Last name are not provided in first record of pet (Cat) and are provided in second record of pet(Dog) via post enrollment file then that record with names blank will be skipped with error and the other record of employee will be uploaded
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Upload Post Enrollment File "PostEnrollmentFile_Validation"