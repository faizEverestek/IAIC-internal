#@Regression
Feature: Employee Termination - Pet Demographics

  Background: User is logged in
    When "Ben Admin Administered" group is created manually by iaic admin
    And web browser is landed on the "Add Employee Page"
    And "Add Employee" is clicked
    And "Employee Census Type" is clicked

  #@Regression
  Scenario: Verify employee get terminate by providing Termination date and effective date as payroll end date via post enrollment file upload
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Upload Post Enrollment File "Employee Level Termination"

  #@Regression
  Scenario: Verify employee should not get terminated when the effective date and termination date are not from same month in post enrollment file.
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Upload Post Enrollment File "Employee Level Termination"

  #@Regression
  Scenario: Verify Employee not get terminated if there are 2 or more pets and termination date provided for first pet only, other pets termination date kept blank And Effective date is not set as end date via post enrollment file upload
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Upload Post Enrollment File "Employee Level Termination"

  #@Regression
  Scenario: Verify Employee get terminated if there are 2 or more pets and termination date provided for any one pet only, other pets termination date kept blank And Effective date is set as coverage end date for all pet via post enrollment file upload
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Upload Post Enrollment File "Employee Level Termination"

  #@Regression
  Scenario: Verify if Employee terminated with prior start date(previous billing cycle) via Postenrollment file upload then it would be retro termination.
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Upload Post Enrollment File "Employee Level Termination"

  #@Regression
  Scenario: Verify if Employee terminated with future date via enrollment file upload then employee should get included in upcoming bills till Termination date's month.
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Upload Post Enrollment File "Employee Level Termination"

  #@Regression
  Scenario: Verify employee will not get terminated while providing termination date via initial PDBA file upload
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Upload Post Enrollment File "Employee Level Termination"