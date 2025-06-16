#@Regression
Feature: Billing Dashboard Changes

  Background: User is logged in
    And web browser is landed on the "Billing Page"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    Then "Automation_vjuoOzxT4" is entered in "Search Group Name"
    And "View" is clicked

  @Regression
  Scenario: Verify All column names and rows names with respect to the sample Reconciliation report.
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Verify for group with Advance group credit, group credit get displayed in 'Total Amount on Credit' column for "group level" row in Reconciliation report.
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Verify "Total Receivable Balance" column shows sum of “employee receivable balance”, “employer receivable balance”, and “group receivable balance”
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Verify for unpaid employee from previous bill, Sum of unpaid amount from previous bill get shown in 'Group Receivable Balance'. The unpaid employees will not reflect in Reconciliation report).
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Verify group level credit applied for both 'Employee Deduction' & 'Employeer Deduction', Shows used credit amount in 'Group Credit Applied to Employee Deduction' & 'Group Credit Applied to Employer Contribution' column respectively.
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Verify if Cash confirm > Cash remited, extra amount get reflected in group credit
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: verify if bill get paid using Adjustment, In Reconciliation report the 'Total Outstanding Balance' = 'Group Receivable Balance' + 'Adjustment Used'.
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Verify Reconciliation report do not includes entries for 'terminated employees'.
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Verify Reconciliation report do not includes entries for 'Retro terminated employees', And the paid premium amount get transferred to Group credit reflects in 'Total Amount on Credit' at group level row in Reconciliation report.
    And "Billing Reports" is clicked
    Then "Download" is clicked

  #@Regression
  Scenario: Revision to Aging Report
    #Test Case1: Verify the Group aging report as revised (SLA marker and buckets)
    #Test Case2: Verify Group is getting shown in group aging report With group level outstanding balance for initial policy only when there is pending past due available
    #Test Case3: Verify Group is getting shown in group aging report With group level credit for initial policy
    #Test Case4: Verify for renewal policies, the credit and outstanding balances will include amounts  from the expiring policy of group following their effective date
    #Test Case5: Verify in case of renewal policies, the Past due and buckets for initial policy record does not include any amount from renewal policy
    #Test Case6: Verify Group is getting shown in group aging report With correct group level outstanding balance for initial policy, for retro employee addition
    #Test Case7: Verify for renewal policies, the credit and outstanding balances do not include amounts from the renewal policy to initial policy record, If past due due is available in intial policy
    When web browser is landed on the "Groups Dashboard"
    And "Billing Link" is clicked
    And "Run Aging Report Job" is clicked
    And "Report Type" is clicked
    And "Group Aging Report" is clicked
    And "08" is entered in "Month Input"
    And "14" is entered in "Day Input"
    And "2024" is entered in "Year Input"
    And "Aging Report Text" is clicked
    Then "Sign In" is clicked