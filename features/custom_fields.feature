@set2 @contacts @production
Feature: Contact Custom Field Scenarios

Scenario: Edit a custom field group    
  Given I login as a Community Administrator
  And I am on the contacts custom fields edit page
  And I click the "Edit Group" link
  And I fill in the text field "field textarea medium" with random "Syracuse"
  And I click the "Done" button
  And I click the "new_ui_blue_button_inner" div
  And I click the "Logout" link