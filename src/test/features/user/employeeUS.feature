@Regression-QA
Feature: Home Page Scenarios US

  Background: User is logged in
    When web browser is landed on the "Groups Dashboard"
    And "Sign Out" is clicked using action class

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'IAIC - Not Enrolled, Active Enrollment'
    When "karan.chauhan+Home1@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROLL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"
    Then "ENROLL IN BENEFIT PERIOD 01/01/2027 - 01/01/2028" is displayed at "Enroll in Ben Period 2"

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'IAIC - Enrolled'
      When "sherlin.shaji+cbv972@everestek.com" is entered in "Username"
      And "Sign In" is clicked
      And "Hello@123" is entered in "Password"
      And "Sign In" is clicked
      Then "ENROLL IN BENEFIT PERIOD 01/01/2025 - 01/01/2026" is displayed at "Enroll in Ben Period 1"

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'IAIC - Not Enrolled, Passive Renewal'
    When "karan.chauhan+tzoestmwh@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROLL IN BENEFIT PERIOD 01/01/2026 - 01/01/2027" is displayed at "Enroll in Ben Period 1"
    Then "ENROLL IN BENEFIT PERIOD 01/01/2027 - 01/01/2028" is displayed at "Enroll in Ben Period 2"

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'PDBA - Not Enrolled (File Not Uploaded)'
    When "sherlin.shaji+ask872@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Hello@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROLL IN BENEFIT PERIOD 01/01/2025 - 01/01/2026" is displayed at "Enroll in Ben Period 1"

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "sherlin.shaji+chj11@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    Then "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Not Enrolled' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "sherlin.shaji+vcb969@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "ENROLL IN BENEFIT PERIOD 01/01/2025 - 01/01/2026" is displayed at "Enroll in Ben Period 1"

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'IAIC - Not Enrolled, Active Enrollment'
    When "sherlin.shaji+cbv672@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'IAIC - Enrolled'
    When "sherlin.shaji+cbv272@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Sherlin@1234" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'IAIC - Not Enrolled, Passive Renewal'
    When "sherlin.shaji+ncv872@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Sherlin@1234" is entered in "Password"
    And "Sign In" is clicked
    Then "ADD MORE PETS TO YOUR CURRENT COVERAGE!" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'PDBA - Not Enrolled (File Not Uploaded)'
    When "karan.chauhan+ybowwlasl@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "karan.chauhan+hctrihegfk@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'IAIC - Enrolled' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "karan.chauhan+vyibxauxg@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Not Enrolled (EEnot present or was termed)' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "karan.chauhan+gppi-16066-1@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Not Enrolled (EEnot present or was termed)' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "sherlin.shaji+aaq69@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, No Demographics' and Renewal/Upcoming Term is 'PDBA - Not Enrolled (File Not Uploaded)'
    When "karan.chauhan+gppi-16060-1@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    Then "COMPLETE YOUR PET REGISTRATION NOW!" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, No Demographics' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "karan.chauhan+gppi-16061-1@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    Then "Renew Policy" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, No Demographics' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "karan.chauhan+gppi-16062-1@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed
    Then "Renew Policy" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, Demo Populated' and Renewal/Upcoming Term is 'PDBA - Not Enrolled (File Not Uploaded)'
    When "karan.chauhan+gppi-16063-1@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, Demo Populated' and Renewal/Upcoming Term is 'PDBA - Enrolled, No Demographics'
    When "karan.chauhan+gppi-16064-1@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed

    #@Regression #@QA
  Scenario: Verify home landing page for employee login when Active/Current Term is 'PDBA - Enrolled, Demo Populated' and Renewal/Upcoming Term is 'PDBA - Enrolled, Demo Populated'
    When "karan.chauhan+gppi-16065-1@everestek.com" is entered in "Username"
    And "Sign In" is clicked
    And "Test@123" is entered in "Password"
    And "Sign In" is clicked
    Then "File a Claim" is displayed