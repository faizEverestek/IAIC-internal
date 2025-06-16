#@Regression
Feature: Capture DOE dates when removing a pet

  Background: User is logged in
    When "Ben Admin Administered" group is created manually by iaic admin
    And web browser is landed on the "Add Employee Page"
    And "Add Employee" is clicked
    And "Employee Census Type" is clicked

  #@Regression
  Scenario: Verify if pet is removed on 1st day of bill cycle (ex. 06/01/2024), then effcetive coverage end date should be 06/01/2024 And should display in UI Termination DOE date as Coverage end date.
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"
    Then Verify coverage end date "06/01/2024" for "PD1"

   #@Regression
  Scenario: Verify if pet is removed in between the bill cycle (ex. 06/15/2024), then effcetive coverage end date should be 06/01/2024 And should display in UI Termination DOE date as Coverage end date.
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"
    Then Verify coverage end date "06/01/2024" for "PD1"

   #@Regression
  Scenario: Verify if pet is removed on 1st day of last bill cycle (ex. 05/01/2025), then effcetive coverage end date should be 05/01/2025 And should display in UI Enrollment DOE date as Coverage end date And not a Termination DOE date.
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"
    Then Verify coverage end date "05/01/2024" for "PD1"

   #@Regression
  Scenario: Verify when the 4th bill is in PAID state And if pet is retro removed with date from 3rd bill cycle (ex. 03/10/2025), then effcetive coverage end date should be 03/01/2025, Pet should be PAID for first 2 bills and premium of 3rd and 4th bill should get added in group credit on next bill generation.
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"
    Then Verify coverage end date "03/01/2025" for "PD1"

   #@Regression
  Scenario: Verify for pet removal through Pet level file, giving Transaction date from cycle which is before of PetEffective Date do not throws error in SFTP dashboard. Ex Transaction date 05/15/2024 & Effective Date 06/01/2024.
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"
    Then Verify coverage end date "06/01/2024" for "PD1"

   #@Regression
  Scenario: Verify for adding Pet through Pet level file, With Transaction date from cycle which is before of PetEffective Date do not throws error in SFTP dashboard. Ex Transaction date 05/15/2024 & Effective Date 06/01/2024.
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"
    Then Verify coverage end date "06/01/2024" for "PD1"

   #@Regression
  Scenario: Verify adding pet through Pet level file with Transaction date as 1st day of last bill cycle (ex. 04/01/2025 with PetEffective date 04/01/2025) get uploaded successfully.
    And "Pet Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Pet Level Post Enrollment"
    Then Verify coverage end date "04/01/2025" for "PD1"

   #@Regression
  Scenario: Verify adding pet through Employee level file with PetEffective date as 1st day of last bill cycle (ex. 04/01/2025) get uploaded successfully.
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Verify coverage end date "04/01/2025" for "PD1"

   #@Regression
  Scenario: Verify when the 4th bill is in PAID state And if pet is retro added with date from 2nd bill cycle (ex. 02/10/2025), then effective billing start date should be 03/01/2025, For generating next bill, Pet premium should be Billed for 3rd and 4th bills aswell.
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Verify coverage end date "03/01/2025" for "PD1"

   #@Regression
  Scenario: Verify if 2bills are in PAID state(termination DOE flag true) and while employee termination via pet level file, when we provide effective date as last day of cycle i.e. 6/30 and transaction date - 6/15 with termination date 6/10 then employee coverage end date should be set effective as 6/1 and credit should be added
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Verify coverage end date "06/01/2024" for "PD1"

   #@Regression
  Scenario: Verify if 2bills are in PAID state(termination DOE flag true) for employee termination via pet level file, when we provide effective date as last day of cycle i.e. 6/30 and transaction date - 5/15 with termination date 6/10 then SFTP files dashboard should throw error for incorrect transaction date(as it should fall between effective date cycle)
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Verify coverage end date "06/01/2024" for "PD1"

   #@Regression
  Scenario: Verify if employee is terminated on last day of 1st billing cycle i.e. termination date as 5/31 with 3bills already in PAID state , then effective coverage end date should be 5/1 displayed in UI for Termination DOE date as Coverage end date with 3 paid premium credit added
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Verify coverage end date "05/01/2024" for "PD1"

   #@Regression
  Scenario: Verify if 3bills are in PAID state (termination DOE flag true) and while employee termination via pet level file, when we provide effective date as last day of any future cycle i.e. 8/31 with future termination date 8/20 then employee coverage end date should be set effective as 8/1
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Verify coverage end date "06/01/2024" for "PD1"

   #@Regression
  Scenario: Verify if Enrollment DOE flag is true and Termination DOE flag is false and when we provide effective date as 6/30 with transaction date 6/15 and termination date 6/5, then coverage end date should show 7/1 in UI
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Verify coverage end date "06/01/2024" for "PD1"

   #@Regression
  Scenario: Verify if Enrollment DOE and Termination DOE flag is true and when we provide effective date / transaction date as 6/15 and termination date 6/5, then coverage end date should show 6/15 but employee end date effective 6/1 in UI
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Verify coverage end date "06/01/2024" for "PD1"

   #@Regression
  Scenario: Verify when terminating employee before employee coverage start date(i.e emp added effective 2nd cycle) via pet level file, the coverage end date in UI should be set as coverage start date itself and not transaction date provided
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Verify coverage end date "06/01/2024" for "PD1"

   #@Regression
  Scenario: Verify when terminating employee before group coverage start date, the coverage end date in UI will not be set thereby system throwing error in SFTP Files dashboard
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Verify coverage end date "06/01/2024" for "PD1"

   #@Regression
  Scenario: Verify for termination DOE when providing payroll cycle start date as effective/termination date i.e. 7/1 via employee level file, system should accept start date 7/1 and charge for previous month 6/1
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Verify coverage end date "06/01/2024" for "PD1"

   #@Regression
  Scenario: Verify for termination DOE when providing payroll cycle end date as effective/termiantion date i.e. 7/31 via employee level file, system should accept start date 7/31 and charge for previous month 7/1
    And "Employee Level Post Enrollment File Upload" is clicked
    And Upload Post Enrollment File "Employee Level Post Enrollment"
    Then Verify coverage end date "06/01/2024" for "PD1"