@set2 @production @workspaces
Feature: Workspace Index Scenarios

Scenario: Search for Workspace
  Given I login as a Community Administrator
  And I reset the Workspaces data
  And I am on the workspaces page
  And I fill in the text field "quick_search_field_id" with "The Elmira Express"
  And I click the "new_ui_gray_tall_button_inner" div
  And I click the "new_ui_system_button_inner" div
  And I click the "Logout" link

Scenario: Click Pagination on Workspace index page
  Given I login as a Community Administrator
  And I am on the workspaces page
  And I click the "2" link
  And I click the "Logout" link

Scenario: Click Next and Previous buttons on Workspace index page
  Given I login as a Community Administrator
  And I am on the workspaces page
  And I click the "new_ui_paging_button" div
  And I click the "new_ui_disabled_paging_button" div
  And I click the "Logout" link