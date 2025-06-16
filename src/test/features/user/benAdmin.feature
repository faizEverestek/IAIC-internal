Feature: Ben Admin

Background: User is logged in
  When web browser is landed on the "Groups Dashboard"
  And "Sign Out" is clicked using action class
    
  #@Regression
  Scenario: Verify Ben Admin Persona
    And "megha.dhotarkar+99@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "Group Link" is clicked
  