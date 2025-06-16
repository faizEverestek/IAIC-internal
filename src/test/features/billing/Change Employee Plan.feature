#@Regression
Feature: Change Employee Plan - Front End

  #@Regression
  Scenario: Verify the new button “Change Employee Plan” will only appear if the current active policy term is selected
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Billing Page"
    And "View" is clicked
    And "Actions Button" is clicked
    Then "Change Employee Plan" is displayed

  #@Regression
  Scenario: Verify on clicking button “Change Employee Plan” a modal view containing below should also be visible as mandatory field:
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Billing Page"
    And "View" is clicked
    And "Actions Button" is clicked
    And "Change Employee Plan" is clicked
    Then "Done Button" is displayed

    #@Regression
  Scenario: Verify If any open QLE exists for the indicated employee (in a non terminal state) then clicking this button should open a pop-up displaying “At least 1 open QLE has been found for an employee of this group. Please close before proceeding.”
    When "IAIC Administered" group is created manually by iaic admin
    And Select New Payroll Date for 1 month
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Billing Page"
    And "View" is clicked
    And "Actions Button" is clicked
    And "Change Employee Plan" is invisible

  #@Regression
  Scenario: Verify if there is only 1 plan for group then when we view details of employee to change plan, the 'Change Employee Plan' button will not be visible
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Billing Page"
    And "View" is clicked
    And "Actions Button" is clicked
    And "Change Employee Plan" is clicked
    Then "Done Button" is displayed

  #@Regression
  Scenario: Verify 2 bills already in BILLED state and when employee is changed from less expensive plan to more expensive plan, then in next generated bill (payroll deduction report) new plan values will be visible effective pet coverage start date of the employee
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Billing Page"
    And Select New Payroll Date for 2 month
    And wait for 10 seconds "for loading group"
    And "View" is clicked
    And wait for 10 seconds "for loading group"
    And "Actions Button" is clicked
    And "Change Employee Plan" is clicked
    And "Done Button" is clicked
    And browser is navigated to previous page
    And "Billing Reports" is clicked
    And wait for 20 seconds "for loading group"
    And "Refresh Data" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Verify 2 bills already in BILLED state and when employee is changed from more expensive plan to less expensive plan, then in next generated bill (payroll deduction report) new plan values will be visible effective pet coverage start date of the employee
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Billing Page"
    And Select New Payroll Date for 2 month
    And wait for 10 seconds "for loading group"
    And "View" is clicked
    And wait for 10 seconds "for loading group"
    And "Actions Button" is clicked
    And "Change Employee Plan" is clicked
    And "Done Button" is clicked
    And browser is navigated to previous page
    And "Billing Reports" is clicked
    And wait for 20 seconds "for loading group"
    And "Refresh Data" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Verify 2 bills already in PAID state and when employee is changed from less expensive plan to more expensive plan, then after regeneration of bill creates an outstanding balance of Periods active*(new plan cost - old plan cost) i.e. new plan cost*no.of bills paid and Retro credit = old plan cost*no.of bills paid
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Billing Page"
    And Select New Payroll Date for 2 month
    And wait for 10 seconds "for loading group"
    And "View" is clicked
    And wait for 10 seconds "for loading group"
    And "Actions Button" is clicked
    And "Change Employee Plan" is clicked
    And "Done Button" is clicked
    And browser is navigated to previous page
    And "Billing Reports" is clicked
    And wait for 20 seconds "for loading group"
    And "Refresh Data" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Verify 2 bills already in PAID state and when employee is changed from more expensive plan to less expensive plan, the bill creates a Credit of Periods active*(old plan cost - new plan cost)
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Billing Page"
    And Select New Payroll Date for 2 month
    And wait for 10 seconds "for loading group"
    And "View" is clicked
    And wait for 10 seconds "for loading group"
    And "Actions Button" is clicked
    And "Change Employee Plan" is clicked
    And "Done Button" is clicked
    And browser is navigated to previous page
    And "Billing Reports" is clicked
    And wait for 20 seconds "for loading group"
    And "Refresh Data" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Verify if Employee1 is retro terminated effective 1st cycle(current cycle 4) simultaneously on clicking Employee plan change, system should not allow to change plan
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Billing Page"
    And Select New Payroll Date for 2 month
    And wait for 10 seconds "for loading group"
    And "View" is clicked
    And wait for 10 seconds "for loading group"
    And "Actions Button" is clicked
    And "Change Employee Plan" is clicked
    And "Done Button" is clicked
    And browser is navigated to previous page
    And "Billing Reports" is clicked
    And wait for 20 seconds "for loading group"
    And "Refresh Data" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Verify 3 bills in PAID state and Employee1 pet2 is retro terminated effective 2nd cycle and bill4 generated , later Emp1 plan changed and agian bill4 regenerated with new values
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Billing Page"
    And Select New Payroll Date for 2 month
    And wait for 10 seconds "for loading group"
    And "View" is clicked
    And wait for 10 seconds "for loading group"
    And "Actions Button" is clicked
    And "Change Employee Plan" is clicked
    And "Done Button" is clicked
    And browser is navigated to previous page
    And "Billing Reports" is clicked
    And wait for 20 seconds "for loading group"
    And "Refresh Data" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Verify 2bills in BILLED/PAID state then Emp4 is retro added eff 1st cycle and bill2 regenerated, later Emp4 plan changed and again bill2 regenerated with new plan values
    When "IAIC Administered" group is created manually by iaic admin
    And Verify employee added & "Enrolled"
    And web browser is landed on the "Billing Page"
    And Select New Payroll Date for 2 month
    And wait for 10 seconds "for loading group"
    And "View" is clicked
    And wait for 10 seconds "for loading group"
    And "Actions Button" is clicked
    And "Change Employee Plan" is clicked
    And "Done Button" is clicked
    And browser is navigated to previous page
    And "Billing Reports" is clicked
    And wait for 20 seconds "for loading group"
    And "Refresh Data" is clicked
    Then "Download" is clicked