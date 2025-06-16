#@Regression
Feature: Pet Addition - Pet Demographics

  Background: User is logged in
    When "Ben Admin Administered" group is created manually by iaic admin
    And web browser is landed on the "Add Employee Page"
    And "Add Employee" is clicked
    And "Employee Census Type" is clicked

  #@Regression
  Scenario: Verify Post enrollment file upload option will only be visible while adding employee for Ben administered group having post enrollment included
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify Pets added via post enrollment file are not editable or removable in UI enrollments tab with employee login
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify employee adds 2 Pet Dogs(D1,D2) as part of Open enrollment with effective date 1st of next month(ie coverage date) via Post enrollment file upload
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify employee add 1 Pet Cat(C1) to the existing coverage with effective date 1st of next month via Post enrollment file upload
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify employee adds another Pet Dog(D2) to coverage with effective date 1st of next month(ie coverage date) and existing Pet Dog will already be present with change in effective date while adding via Post enrollment file upload
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify Effective date should be same for 1 species or system will raise error for the same
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify while adding a new Pet to an existing employee(having 1 or more pets already), all existing pets with new pet should be added while uploading post enrollment file or system will throw error for missing pets
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify if we change effective date of an existing pet via post enrollment file, the date will be accepted in file but in UI the effective date will remain the same as uploaded firstly
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify if we add and remove a pet(with different species) simultaneously for an employee via post enrollment file both functions should work
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify if new Pet added with prior start date(previous billing cycle) via enrollment file upload then it would be retro addition pet and verify changes in billing dashboard for bills in 'Billed'status
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify if new Pet added with prior start date(previous billing cycle) via enrollment file upload then it would be retro addition pet and verify changes in billing dashboard for bills in 'Paid' status
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify if new employee added with prior start date(previous billing cycle) via enrollment file upload then it would be retro addition and verify changes in billing dashboard for bills in 'Billed'status
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify if new employee added with prior start date(previous billing cycle) via enrollment file upload then it would be retro addition and verify changes in billing dashboard for bills in 'Paid'status
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"