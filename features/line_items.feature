@set4 @production @line_items
Feature: Line_Item flow Scenarios

Background: Create Shipping Issue Type
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
	
Scenario:  "Assign to" and "Waiting on"
  And I am on the edit shipping issue type page
  And I select "ISSUE Creator" from "issue_type_creator_business_role_id"
  And I select "ISSUE Mediator" from "issue_type_mediator_business_role_id"
  And I select "ISSUE Manager" from "issue_type_manager_business_role_id"
  And I select "ISSUE Participant" from "issue_type_participant_business_role_id"
  And I click the "Save" button
  And I am on the issues page
  And I click the "ADD ISSUES" div
  And I select "Owens & Minor" from "issue_responder_id"
  And I fill in the text field "1" with "Red"
  And I fill in the text field "2" with "Blue"
  And I click the "Save" button
  And I click the "Blue" link
  And I click the "Edit Line Item" link
  And I wait for "2" seconds
  And I select "Pending" from "1"
  And I click the "Save Line Item" button
  And I wait for "2" seconds
  Then I should see the text "Waiting on"
  And I click the "Resolve Line Item" link
  Then I should NOT see the text "Assign to"
  