#@Regression 
Feature: Producer

  Background: Producer is logged in
    And web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And wait for 10 seconds "for loading billing dashboard"
    
  @Regression-QA
  Scenario: Verify  IAIC admin can add producer to portal
    And "Producers Link" is clicked
    And "Create Producer" is clicked
    And "12345" is entered in "Producer Code"
    And "Producer Type" is clicked
    And "Select Producer Type" is clicked
    And random name "Automation" is entered in "Producer Name"
    And "Alaska" is entered in "Authorized State" and ENTER key is pressed
    And "Producer Configuration" is clicked
    And "Status" is clicked
    And "Select Status" is clicked
    And "Next Button" is clicked
    And "address1" is entered in "Producer Address"
    And "city1" is entered in "Producer City"
    And "State Add Employee" is clicked
    And "Select State" is clicked
    And "12345" is entered in "Zipcode Add Employee"
    And "Next Button" is clicked
    And "contactName1" is entered in "Contact Name"
    And "addressName1" is entered in "Contact Address"
    And "contactCity" is entered in "Contact City"
    And "Contact State" is clicked
    And "Select State" is clicked
    And "12345" is entered in "Contact Zipcode"
    And "Phone Type" is clicked
    And "Select Phone Type" is clicked
    And "1234567890" is entered in "Phone Number"
    And random email "megha.dhotarkar@everestek.com" is entered in "Contact Email"
    And "Submit Button" is clicked
    And "No Button" is clicked
    And "Filter Button" is clicked
    And "Producer Name" is read by test data key "Producer Name" and entered in "Producer Name"
    And wait for 3 seconds "for elements to be visible"
    Then "Producer Name Text" is read from the test data using the key "Producer Name" and verified with the text at element "Producer Name Text"

  @Regression-QA2
  Scenario: Verify  IAIC admin can add producer to portal
    And "Producers Link" is clicked
    And "Create Producer" is clicked
    And "12345678" is entered in "Producer Code"
    And "Producer Type" is clicked
    And "Select Producer Type" is clicked
    And random name "Automation" is entered in "Producer Name"
    And "Alberta" is entered in "Authorized Provinces" and ENTER key is pressed
    And "Producer Configuration" is clicked
    And "Status" is clicked
    And "Select Status" is clicked
    And "Next Button" is clicked
    And "address1" is entered in "Producer Address"
    And "city1" is entered in "Producer City"
    And "State Add Employee" is clicked
    And "Select State" is clicked
    And "M5V 3L9" is entered in "Zipcode Add Employee"
    And "Next Button" is clicked
    And "contactName1" is entered in "Contact Name"
    And "addressName1" is entered in "Contact Address"
    And "contactCity" is entered in "Contact City"
    And "Contact State" is clicked
    And "Select State" is clicked
    And "M5V 3L9" is entered in "Contact Zipcode"
    And "Phone Type" is clicked
    And "Select Phone Type" is clicked
    And "1234567890" is entered in "Phone Number"
    And random email "megha.dhotarkar@everestek.com" is entered in "Contact Email"
    And "Submit Button" is clicked
    And "No Button" is clicked
    And "Filter Button" is clicked
    And "Producer Name" is read by test data key "Producer Name" and entered in "Producer Name"
    And wait for 3 seconds "for elements to be visible"
    Then "Producer Name Text" is read from the test data using the key "Producer Name" and verified with the text at element "Producer Name Text"
