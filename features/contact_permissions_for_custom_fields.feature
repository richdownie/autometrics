@set1 @permissions @contacts
Feature: Contacts => Permissions for Custom Fields

Background: Start each Scenario with a clean slate
	Given I login as a Community Administrator
	And I remove all existing Answers
	And I am on the contacts view custom field group permissions page
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
  And I click the "field_permissions_5_93_1035" checkbox
  And I click the "new_ui_blue_button_inner" div
  And I click the "Logout" link
  And I login as a Spoke Contact
  And I am on the my profile page
  And I should see the text "T_MCQ"
  And I am on the edit profile page
  Then I should see the text "TABULAR CFG"
  Then I should see the text "Edit Row"
  And I click the "Logout" link

Scenario: Permissions for a Company Administrator
  And I click the "field_permissions_6_93_1035" checkbox 
  And I click the "new_ui_blue_button_inner" div
  And I click the "Logout" link
  And I login as a Spoke Company Administrator
  And I am on the my profile page
  And I should see the text "T_MCQ"
  And I am on the edit profile page
  Then I should see the text "TABULAR CFG"
  Then I should see the text "Edit Row"
  And I click the "Logout" link

Scenario: Permissions for an Employee
  And I click the "field_permissions_7_93_1035" checkbox 
  And I click the "new_ui_blue_button_inner" div
  And I click the "Logout" link
  And I login as an Employee
  And I am on the my profile page
  And I should see the text "T_MCQ"
  And I am on the edit profile page
  Then I should see the text "TABULAR CFG"
  Then I should see the text "Edit Row"
  And I click the "Logout" link

Scenario: Permissions for a Project Administrator
  And I click the "field_permissions_8_93_1035" checkbox 
  And I click the "new_ui_blue_button_inner" div
  And I click the "Logout" link
  And I login as a Hub Project Administrator
  And I am on the my profile page
  And I should see the text "T_MCQ"
  And I am on the edit profile page
  Then I should see the text "TABULAR CFG"
  Then I should see the text "Edit Row"
  And I click the "Logout" link

Scenario: Permissions view TEXT AREA Only
  And I click the "field_permissions_7_94_1034" checkbox 
  And I click the "new_ui_blue_button_inner" div
  And I click the "Logout" link
  And I login as an Employee
  And I am on the my profile page
  And I should see the text "T_TEXT_AREA"
  And I click the "Logout" link

Scenario: Check for javascript toggle text
  Then I should see the text "(Modified)"
  And I click the "Show Field Permissions" link
  And I click the "Hide Field Permissions" link
  And I click the "Logout" link

Scenario: Edit T_TEXT field as a Project Administrator Only
  And I click the "field_permissions_8_94_1035" checkbox 
  And I click the "new_ui_blue_button_inner" div
  And I click the "Logout" link
  And I login as a Hub Project Administrator
  And I am on the edit profile page page
  And I click the "Add Row" div
  And I fill in the text field "input textarea" with "Jimmy B"
  And I click the "SAVE" div
  And I click the "Logout" link
  And I login as an Employee
  And I am on the my profile page
  And I wait for "5" seconds
  Then I should NOT see the text "TABULAR CFG"
  And I click the "Logout" link
