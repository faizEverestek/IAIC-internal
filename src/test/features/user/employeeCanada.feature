@Regression-QA2
Feature: Home Page Scenarios Canada

  Background: User is logged in
    When web browser is landed on the "Groups Dashboard"
    And "Sign Out" is clicked using action class

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'IAIC - Not Enrolled, Active Enrollment'
    When "megha.dhotarkar+home1@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"
    Then "ENROL IN BENEFIT PERIOD 01/01/2027 - 01/01/2028" is displayed at "Enroll in Ben Period 2"

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'IAIC - Enrolled'
      When "megha.dhotarkar+home2@everestek.com" is entered in "Username"
      And "Sign In" is clicked
      And "Test@123" is entered in "Password"
      And "Sign In" is clicked
      Then "ENROL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'IAIC - Not Enrolled, Passive Renewal'
    When "megha.dhotarkar+home3@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"
    Then "ENROL IN BENEFIT PERIOD 01/01/2027 - 01/01/2028" is displayed at "Enroll in Ben Period 2"

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'PDBA - Not Enrolled (File Not Uploaded)'
    When "megha.dhotarkar+home4@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "megha.dhotarkar+home5@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"
    Then "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "megha.dhotarkar+home6@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'IAIC - Not Enrolled, Active Enrollment'
    When "megha.dhotarkar+home7@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    Then "Add more pets to your coverage!" is displayed
    Then "Renew Coverage" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'IAIC - Enrolled'
    When "megha.dhotarkar+home8@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    And "Add more pets to your coverage!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'IAIC - Not Enrolled, Passive Renewal'
    When "megha.dhotarkar+home9@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ADD MORE PETS TO YOUR CURRENT COVERAGE!" is displayed
    And "Update Coverage" is displayed
    And "Opt out of Renewal" is displayed
    And "File a Claim" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'PDBA - Not Enrolled (File Not Uploaded)'
    When "megha.dhotarkar+home10@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    And "Add more pets to your coverage!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "megha.dhotarkar+home11@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    And "Add more pets to your coverage!" is displayed
    And "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "megha.dhotarkar+home12@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    And "Add more pets to your coverage!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Not Enrolled (EEnot present or was termed)' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "megha.dhotarkar+new13@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Not Enrolled (EEnot present or was termed)' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "megha.dhotarkar+new14@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then web browser is landed on the "Groups Dashboard"
  
    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, No Demographics' and Renewal/Upcoming Term is 'PDBA - Not Enrolled (File Not Uploaded)'
    When "megha.dhotarkar+new15@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    Then "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, No Demographics' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "megha.dhotarkar+new16@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    Then "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, No Demographics' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "megha.dhotarkar+new17@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    Then "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, Demo Populated' and Renewal/Upcoming Term is 'PDBA - Not Enrolled (File Not Uploaded)'
    When "megha.dhotarkar+new18@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, Demo Populated' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "megha.dhotarkar+new19@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    And "COMPLETE YOUR PET REGISTRATION NOW!" is displayed
  
    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, Demo Populated' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "megha.dhotarkar+new20@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed