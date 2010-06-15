@set1 @permissions
Feature: Companies => Permissions for Custom Fields

Background: Start each Scenario with a clean slate
	Given I login as a Community Administrator
	And I remove all existing Answers
	And I am on the companies view custom field group permissions page
	Then I check for the header and footer
	And I verify all checkboxes are unchecked

Scenario: Verify columns and rows display on the page
	Then I should see the text "Contact"
	Then I should see the text "Company Administrator"
	Then I should see the text "Employee"
	Then I should see the text "Project Administrator"
	Then I should see the text "Community Administrator"
  And I click the "Logout" link

Scenario: Permissions for a Spoke Contact 
  And I click the "field_permissions_5_100_1035" checkbox
  And I click the "new_ui_blue_button_inner" div
  And I click the "Logout" link
  And I login as a Spoke Contact
  And I am on the my company page
  And I should see the text "MCQ"
  And I click the "Edit Company" div
  Then I should see the text "NON-TABULAR"
  And I click the "Logout" link

Scenario: Permissions for a Company Administrator
  And I click the "field_permissions_6_100_1035" checkbox 
  And I click the "new_ui_blue_button_inner" div
  And I click the "Logout" link
  And I login as a Spoke Company Administrator
  And I am on the my company page
  And I should see the text "MCQ"
  And I click the "Edit Company" div
  Then I should see the text "NON-TABULAR"
  And I click the "Logout" link

Scenario: Permissions for an Employee
  And I click the "field_permissions_7_100_1035" checkbox 
  And I click the "new_ui_blue_button_inner" div
  And I click the "Logout" link
  And I login as an Employee
  And I am on the my company page
  And I should see the text "MCQ"
  And I click the "Edit Company" div
  Then I should see the text "NON-TABULAR"
  And I should see the text "MCQ"
  And I click the "Logout" link

Scenario: Permissions for a Project Administrator
  And I click the "field_permissions_8_100_1035" checkbox 
  And I click the "new_ui_blue_button_inner" div
  And I click the "Logout" link
  And I login as a Hub Project Administrator
  And I am on the my company page
  And I should see the text "MCQ"
  And I click the "Edit Company" div
  Then I should see the text "NON-TABULAR"
  And I click the "Logout" link

Scenario: Check for javascript toggle text
  Then I should see the text "(Modified)"
  And I click the "Show Field Permissions" link
  And I click the "Hide Field Permissions" link
  And I click the "Logout" link
