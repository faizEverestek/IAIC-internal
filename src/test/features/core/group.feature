#@Regression @smoke
Feature: Groups

#@Regression  
  Scenario: Verify Group is created manually by IAIC admin for the "Pet partners" MGA
    Then "IAIC Administered" group is created manually by iaic admin

#@Regression  
  Scenario: Verify master policy generated  for group created activated for "figo" Mga for group
    Then "IAIC Administered" group is created manually by iaic admin

#@Regression
   Scenario: Verify group is created and activated using group template
     Then "IAIC Administered" group is created manually by iaic admin

#@Regression    
  Scenario: Verify Employee can be added to the group Using Manual input (UI)
    When "IAIC Administered" group is created manually by iaic admin
    Then Verify employee added & "Enrolled"

#@Regression
  Scenario: Verify IAICadmin/Group admin can edit adminstrator details of group
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Edit Administrators" is clicked
    Then "Edit Admin Info" is clicked

 #@Regression
  Scenario: Verify IAICadmin/Group admin can edit location details of group
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Edit Location" is clicked
    And "1" is entered in "Address Line 1"
    Then "Submit Button" is clicked

   #@Regression    
  Scenario: Verify IAICadmin/Group admin can upload documents to a group
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    Then "Add Educational Material Link" is clicked

    #@Regression    
  Scenario: Verify IAICadmin can upload educational materials
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    Then "Add Educational Material Link" is clicked

#@Regression
  Scenario: Verify that IAIC admin is able to move employee level outstanding credit to group level while  employee is terminated and if employee has credit
    When "IAIC Administered" group is created manually by iaic admin
    Then Verify employee added & "Enrolled"
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Transfer Credit To Group" is clicked
    Then "Add Credit Amount" is entered in "95"

 #@Regression
  Scenario: Verify IAIC Super admin can delete a group in Initial policy
    When "IAIC Administered" group is created manually by iaic admin
    And web browser is landed on the "Groups Dashboard"
    And "Three Dots Action" is clicked
    And "Delete Group" is clicked
    And "Delete Confirm Button" is clicked
    Then "Delete Confirm Message" is displayed