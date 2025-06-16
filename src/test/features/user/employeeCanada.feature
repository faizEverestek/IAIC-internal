@Regression-QA2
Feature: Home Page Scenarios Canada

  Background: User is logged in
    When web browser is landed on the "Groups Dashboard"
    And "Sign Out" is clicked using action class

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'IAIC - Not Enrolled, Active Enrollment'
    When "karan.chauhan+Home1@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"
    Then "ENROL IN BENEFIT PERIOD 01/01/2027 - 01/01/2028" is displayed at "Enroll in Ben Period 2"

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'IAIC - Enrolled'
      When "karan.chauhan+home2@everestek.com" is entered in "Username"
      And "Sign In" is clicked
      And "Test@123" is entered in "Password"
      And "Sign In" is clicked
      Then "ENROL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'IAIC - Not Enrolled, Passive Renewal'
    When "karan.chauhan+home3@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"
    Then "ENROL IN BENEFIT PERIOD 01/01/2027 - 01/01/2028" is displayed at "Enroll in Ben Period 2"

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'PDBA - Not Enrolled (File Not Uploaded)'
    When "karan.chauhan+home2@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "karan.chauhan+home5@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"
    Then "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "karan.chauhan+home2@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'IAIC - Not Enrolled, Active Enrollment'
    When "karan.chauhan+home6@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    Then "Add more pets to your coverage!" is displayed
    Then "Renew Coverage" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'IAIC - Enrolled'
    When "karan.chauhan+home6@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'IAIC - Not Enrolled, Passive Renewal'
    When "karan.chauhan+home6@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "Add more pets to your coverage!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'PDBA - Not Enrolled (File Not Uploaded)'
    When "karan.chauhan+home6@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "karan.chauhan+home6@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "karan.chauhan+home6@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Not Enrolled (EEnot present or was termed)' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "karan.chauhan+home5@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Not Enrolled (EEnot present or was termed)' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "karan.chauhan+home6@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, No Demographics' and Renewal/Upcoming Term is 'PDBA - Not Enrolled (File Not Uploaded)'
    When "karan.chauhan+home14@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    Then "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, No Demographics' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "karan.chauhan+home14@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    Then "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, No Demographics' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "karan.chauhan+home14@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    Then "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, Demo Populated' and Renewal/Upcoming Term is 'PDBA - Not Enrolled (File Not Uploaded)'
    When "karan.chauhan+home6@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, Demo Populated' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "karan.chauhan+home6@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA2
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, Demo Populated' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "karan.chauhan+home6@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed