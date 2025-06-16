#@Regression 
Feature: Employer persona

  Background: User is logged in
    When web browser is landed on the "Groups Dashboard"
    And "Sign Out" is clicked using action class
    And "megha.dhotarkar+14@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    Then "Sign In" is clicked
    
  #@Regression  
  Scenario: Employer persona
    #Test Case1: Verify employee persona is able to see 24*7 vet helpline in left menu
    Then "Helpline" is displayed
    #Test Case2: Verify employee persona is able to see contact us in left menu
    Then "Contact Us" is displayed
    And web browser is landed on the "Groups Dashboard"
    #Test Case3: Employer to update contact information for their employees
    Then "Group Link" is clicked
    And "Three Dots Action" is clicked
    #Test Case4: Verify that group admin is able to add documents
    Then "Add Educational Material Link" is clicked

  #@Regression
  Scenario: Employer to update contact information for their employees
    And web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    Then "View" is clicked

  #@Regression
  Scenario: Verify the user IAIC admin/Group admin is able to Search by Employee Number in the Group details screen
    And web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And "Filter Button" is clicked
    And "1140055" is entered in "Employee ID Search"
    Then "Employee ID Search" is displayed
