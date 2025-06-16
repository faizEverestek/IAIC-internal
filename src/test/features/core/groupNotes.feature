#@Regression @smoke
Feature: Groups

  #@Regression
  Scenario: Verify IAIC admin/Super admin can view/submit all notes for a group
    When web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "ENH.247.1 (DO NOT EDIT)" is entered in "Search Group Name"
    And "View" is clicked
    And "Three Dots Action" is clicked
    And "Add Notes" is clicked
    And "Add Note Categories" is clicked
    And "Admin Benbroker Changes" is clicked
    And "Add Note Payroll Cycle" is clicked
    And "Select Payroll Cycle" is clicked
    And "This is test comment for dummy note" is entered in "Add Note Comment"
    And "src//test//testData//dummyFile.png" is uploaded at "File Upload"
    And "Sign In" is clicked
    And "Note Added Popup" is displayed
    And "Notes Selection" is clicked
    And "Delete Note" is clicked
    And "Delete Confirm Button" is clicked
    Then "Note Deleted Popup" is displayed

  #@Regression
  Scenario: Verify IAIC admin/Super admin can view/submit all notes for a group
    When web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "ENH.247.1 (DO NOT EDIT)" is entered in "Search Group Name"
    And "View" is clicked
    And "Three Dots Action" is clicked
    And "Add Notes" is clicked
    And "Add Note Categories" is clicked
    And "Admin Benbroker Changes" is clicked
    And "Add Note Payroll Cycle" is clicked
    And "Select Payroll Cycle" is clicked
    And "This is test comment for dummy note" is entered in "Add Note Comment"
    And "src//test//testData//dummyFile.png" is uploaded at "File Upload"
    And "Sign In" is clicked
    And "Note Added Popup" is displayed
    And "Notes Selection" is clicked
    And "Delete Note" is clicked
    And "Delete Confirm Button" is clicked
    Then "Note Deleted Popup" is displayed

  #@Regression
  Scenario: Verify IAIC admin /Super admin  is able to upload multiple attachments(ie file limit upto 6) and only 50mb file should be uploaded for a Group notes/comments
    When web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "ENH.247.1 (DO NOT EDIT)" is entered in "Search Group Name"
    And "View" is clicked
    And "Three Dots Action" is clicked
    And "Add Notes" is clicked
    And "Add Note Categories" is clicked
    And "Admin Benbroker Changes" is clicked
    And "Add Note Payroll Cycle" is clicked
    And "Select Payroll Cycle" is clicked
    And "This is test comment for dummy note" is entered in "Add Note Comment"
    And "src//test//testData//dummyFile.png" is uploaded at "File Upload"
    And "src//test//testData//dummyFile.png" is uploaded at "File Upload"
    And "Sign In" is clicked
    And "Note Added Popup" is displayed
    And "Notes Selection" is clicked
    And "Delete Note" is clicked
    And "Delete Confirm Button" is clicked
    Then "Note Deleted Popup" is displayed

  #@Regression
  Scenario: Verify IAIC admin/Super admin can delete notes submitted against each group , also cannot delete notes/comments of other authors
    When web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "ENH.247.1 (DO NOT EDIT)" is entered in "Search Group Name"
    And "View" is clicked
    And "Three Dots Action" is clicked
    And "Add Notes" is clicked
    And "Add Note Categories" is clicked
    And "Admin Benbroker Changes" is clicked
    And "Add Note Payroll Cycle" is clicked
    And "Select Payroll Cycle" is clicked
    And "This is test comment for dummy note" is entered in "Add Note Comment"
    And "src//test//testData//dummyFile.png" is uploaded at "File Upload"
    And "Sign In" is clicked
    And "Note Added Popup" is displayed
    And "Notes Selection" is clicked
    And "Delete Note" is clicked
    And "Delete Confirm Button" is clicked
    Then "Note Deleted Popup" is displayed

  #@Regression
  Scenario: Verify IAIC admin/Super admin can view notes  for Group Status  Terminated/Policy Expired
    When web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "ENH.247.1 (DO NOT EDIT)" is entered in "Search Group Name"
    And "View" is clicked
    And "Three Dots Action" is clicked
    And "Add Notes" is clicked
    And "Add Note Categories" is clicked
    And "Admin Benbroker Changes" is clicked
    And "Add Note Payroll Cycle" is clicked
    And "Select Payroll Cycle" is clicked
    And "This is test comment for dummy note" is entered in "Add Note Comment"
    And "src//test//testData//dummyFile.png" is uploaded at "File Upload"
    And "Sign In" is clicked
    And "Note Added Popup" is displayed
    And "Notes Selection" is clicked
    And "Delete Note" is clicked
    And "Delete Confirm Button" is clicked
    Then "Note Deleted Popup" is displayed

  #@Regression
  Scenario: Verify the Filter and Sort header (Date range, Commenter, Category,Payroll schedule id) of Notes section
    When web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "ENH.247.1 (DO NOT EDIT)" is entered in "Search Group Name"
    And "View" is clicked
    And "Three Dots Action" is clicked
    And "Add Notes" is clicked
    And "Add Note Categories" is clicked
    And "Admin Benbroker Changes" is clicked
    And "Add Note Payroll Cycle" is clicked
    And "Select Payroll Cycle" is clicked
    And "This is test comment for dummy note" is entered in "Add Note Comment"
    And "src//test//testData//dummyFile.png" is uploaded at "File Upload"
    And "Sign In" is clicked
    And "Note Added Popup" is displayed
    And "Notes Selection" is clicked
    And "Delete Note" is clicked
    And "Delete Confirm Button" is clicked
    Then "Note Deleted Popup" is displayed

  #@Regression
  Scenario: Verify IAIC Admin/Super Admin can Edit notes at Group and Billing level
    When web browser is landed on the "Groups Dashboard"
    And "Group Link" is clicked
    And Verify "Filter Button" is clicked
    And "ENH.247.1 (DO NOT EDIT)" is entered in "Search Group Name"
    And "View" is clicked
    And "Three Dots Action" is clicked
    And "Add Notes" is clicked
    And "Add Note Categories" is clicked
    And "Admin Benbroker Changes" is clicked
    And "Add Note Payroll Cycle" is clicked
    And "Select Payroll Cycle" is clicked
    And "This is test comment for dummy note" is entered in "Add Note Comment"
    And "src//test//testData//dummyFile.png" is uploaded at "File Upload"
    And "Sign In" is clicked
    And "Note Added Popup" is displayed
    And "Notes Selection" is clicked
    And wait for 5 seconds "for loading billing dashboard"
    And "Delete Note" is clicked
    And "Delete Confirm Button" is clicked
    Then "Note Deleted Popup" is displayed
