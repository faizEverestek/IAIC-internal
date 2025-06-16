#@Regression
Feature: Invoice: Ability for IAIC admin to regenerate a billing cycle

Background: User is logged in
  When "IAIC Administered" group is created manually by iaic admin
  And Verify employee added & "Enrolled"

  #@Regression
  Scenario: Verify Bill1 is generated and normal employee is added, after regeneration of bill the employee will be considered in next bill and not in regeneration bill
    Then Select New Payroll Date for 1 month

  #@Regression  
  Scenario: Verify Bill1 is generated and normal pet is added, after regeneration of bill the pet will be considered in next bill and not in regeneration bill
    Then Select New Payroll Date for 1 month

  #@Regression  
  Scenario: Verify Bill3 is generated and retro pet is added effective first cycle, after regeneration of bill the pet will be added in the bill effective first cycle bill/payroll dates
    Then Select New Payroll Date for 3 month

  #@Regression  
  Scenario: Verify Bill3 is generated and retro employee is added effective first cycle, after regeneration of bill the employee will be added in the bill effective first cycle bill/payroll dates
    Then Select New Payroll Date for 3 month

  #@Regression  
  Scenario: Verify Bill2 is generated and employee is terminated, after regeneration of bill the employee will be considered in next bill and not in regeneration bill
    Then Select New Payroll Date for 2 month

  #@Regression  
  Scenario: Verify Bill1 is generated , regenerate bill again without adding or terminating new pet/employee and verify recently generated and regenerated bills will be identical
    Then Select New Payroll Date for 1 month

  #@Regression  
  Scenario: Verify if no bills are generated and on regeneration of bill, system will throw error as 'Bill not found'
    Then Select New Payroll Date for 2 month

  #@Regression  
  Scenario: Verify 4th bill is generated and pet is removed for an employee, after regeneration of bill the removed pet will be considered in next bill and not in regeneration bill
    Then Select New Payroll Date for 4 month
 
  #@Regression  
  Scenario: Verify 12th bill is generated and retro terminate an employee effective 6th cycle,after regeneration the Re-generated bill should contain a row for retro-terminated employee with 0 0 values and deduction change Y
    Then Select New Payroll Date for 12 month

  #@Regression  
  Scenario: Verify 12th bill is generated and normal pet added ,life event QLE will be generated and on approving the QLE system will raise error 'Upcoming payroll cycle unavailable'
    Then Select New Payroll Date for 12 month

  @Regression
  Scenario: Verify 12th bill is generated and normal employee is added ,on enrolling and clicking on submit system will raise enrollment error 'The effective date of coverage is beyond the expiration date of group coverage. Please contact your Human Resources department for assistance.'
    Then Select New Payroll Date for 12 month
