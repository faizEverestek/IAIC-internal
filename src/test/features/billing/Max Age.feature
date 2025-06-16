#@Regression
Feature: If Pet is removed in any cycle, and same pet is made ineligible, then the difference between coverage start and end date must be reflected either in credit/billed amount

  Background: User is logged in
    When "Ben Admin Administered" group is created manually by iaic admin
    And web browser is landed on the "Add Employee Page"
    And "Add Employee" is clicked
    And "Employee Census Type" is clicked

  #@Regression
  Scenario: Verify 3bills PAID for PDBA group , pet1 is removed and marked ineligible in 2nd cycle then the coverage start and end date should be same eff 1st cycle and already paid pet1 premium of 3bills should be reflected in next bill credit amount
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify 3bills BILLED for PDBA group , pet1 is removed and marked ineligible in 2nd cycle then the coverage start and end date should be same and Billed amount should be deducted based on retro terminated pet
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify for Termination DOE,3bills PAID and pet1 is removed and marked ineligible in 2nd cycle then the coverage start and end date should be same eff 1st cycle and already paid pet1 premium of 3bills should be reflected in next bill credit amount
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"

  #@Regression
  Scenario: Verify when both DOE flags true,3bills PAID and pet1 is removed and marked ineligible in 2nd cycle then the coverage start and end date should be same eff 1st cycle and already paid pet1 premium of 3bills should be reflected in next bill credit amount (same transaction date)
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"