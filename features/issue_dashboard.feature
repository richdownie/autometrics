@set3 @production @issues
Feature: Shipping Issue Dashboard

Background: Setup
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
  And I click the Drop-List Column under Columns for Line Items
  And I fill in the text field "1" with "Line Item Drop-List"
  And I fill in the text field "question_choices_attributes_0_label" with "One"
  And I fill in the text field "question_choices_attributes_0_value" with "One"
  And I fill in the text field "question_choices_attributes_1_value" with "Two"
  And I fill in the text field "question_choices_attributes_1_value" with "Two"
  And I click the "Add Column" button
  And I click the Number Column under Columns for Line Items
  And I fill in the text field "question_label" with "Line Item Number"
  And I click the "Add Column" button
  
Scenario:	Verify charts display as Community Administrator
  Given I click the "DASHBOARD" div
  And I click the "graph span-10" div
  And I click the "graph span-10 last" div
  And I click the "modifying your issue type settings" link
  And I select "Line Item Number" from "issue_type_custom_graph_field_1"
  And I select "Line Item Drop-List" from "issue_type_custom_graph_field_2"
  And I click the "Save" button
  And I click the "DASHBOARD" div
  Then I should see the text "Dashboard"
  Given I am on the edit shipping issue type page
  And I select "" from "issue_type_custom_graph_field_1"
  And I select "" from "issue_type_custom_graph_field_2"
  And I click the "Save" button
  #drive graphs with dates
  Given I click the "DASHBOARD" div
  And I fill in the text field "graph_date_range_from" with "25-Dev-2010"
  And I fill in the text field "graph_date_range_to" with "26-Dev-2010"
  And I click the "Refresh" link
  And I click the "Logout" link