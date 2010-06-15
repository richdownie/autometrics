@set3 @production @issues @import
Feature: General Issue Scenarios

Background: Go to Import Page as Community Administrator with a clean slate
  Given I login as a Community Administrator
  And I reset the Issues data
  And I am on the Issues page
  And I click the "ADMIN" div
  And I click the "Shipping Dispute" link
  And I click the "Text Column" under "issue_links"
  And I fill in the text field "1" with "Form Color?"
  And I click the "Add Column" button
  And I click the "Text Column" under "line_item_links"
  And I fill in the text field "1" with "Line Item Color?"
  And I click the "Add Column" button

Scenario: Import a Valid Issue CSV
  Given I am on the issue import page
  And I wait for "10" seconds
  And I upload "issue_import.csv" to the "import_uploaded_data" file field
  And I click the "Next" link
	And I wait for "6" seconds
  And I click the "Next" link
	And I wait for "6" seconds
  And I click the "Next" link
	And I wait for "6" seconds
  And I click the "Next" link
	And I wait for "6" seconds
  And I click the "Finish" link
  And I click the "Logout" link
  
Scenario: Only allow mapping to editable fields for the creator  
  And I click the Edit Link Text Column for Line Items
  And I verify all checkboxes are unchecked
  And I click the "question_issue_field_authorizations_attributes_2_editable" checkbox
  And I click the "Update Column" button
  And I click the "Logout" link
  Given I login with "rdownie+jcreator@qamail1.rollstream.com"
  Given I am on the issue import page
  And I wait for "10" seconds
  And I upload "issue_import.csv" to the "import_uploaded_data" file field
  And I click the "Next" link
	And I wait for "6" seconds
  And I click the "Next" link
	And I wait for "6" seconds
  And I click the "Next" link
	And I wait for "6" seconds
  And I click the "Next" link
	And I wait for "6" seconds
  And I click the "Finish" link
  And I click the "Logout" link

Scenario: Import an Invalid Issue CSV
  Given I am on the issue import page
  And I wait for "10" seconds
  And I upload "invalid_issue_import.csv" to the "import_uploaded_data" file field
  And I click the "Next" link
  And I click the "Next" link
  And I wait for "10" seconds
  Then I should see the text "Reporter Email Address is required"
  Then I should see the text "Company ID is required"
  And I click the "Logout" link

Scenario: Import an Issue XLS
  Given I am on the issue import page
  And I wait for "10" seconds
  And I upload "issue_import.xls" to the "import_uploaded_data" file field
  And I click the "Next" link
  And I click the "Next" link
  And I wait for "10" seconds
  Then I should see the text "There are problems with the import file. Please be sure the file is in a comma separated values (CSV) format."
  And I click the "Logout" link