@set3 @production @issues
Feature: General Issue Scenarios

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
  And I am on the edit shipping issue type page
  And I select "ISSUE Creator" from "issue_type_creator_business_role_id"
  And I select "ISSUE Mediator" from "issue_type_mediator_business_role_id"
  And I select "ISSUE Manager" from "issue_type_manager_business_role_id"
  And I select "ISSUE Participant" from "issue_type_participant_business_role_id"
  And I click the "Save" button

Scenario: A NON-CA Person can collaborate on issues assigned to their organization and can also modify issue line items (POST)
  And I am on the issues page
  And I click the "ADD ISSUES" div
  And I select "Owens & Minor" from "issue_responder_id"
  And I fill in the text field "1" with "Red"
  And I fill in the text field "2" with "Blue"
  And I click the "Save" button
  And I click the "Logout" link
  And I login with "rdownie+jparticipant@qamail1.rollstream.com"
  And I am on the the shipping issue line items page
  And I click the "Blue" link
  And I fill in the text field "1" with "Hello World"
  And I wait for "3" seconds
  And I upload "Companies.xls" to the "comment_files_attributes_0_uploaded_data" file field
  And I click the "Post Reply" button
  Then I should see the text "Your comment has been added"
  And I click the "Logout" link

Scenario: A NON-CA Person can create issues with organizations (CREATE, EDIT[OWN], POST)
  And I click the "Logout" link
  And I login with "rdownie+jcreator@qamail1.rollstream.com"
  And I am on the issues page
  And I click the "ADD ISSUES" div
  And I select "A&P" from "issue_responder_id"
  And I fill in the text field "1" with "Red"
  And I fill in the text field "2" with "Blue"
  And I click the "Save" button
  Then I should see the text "Issue created"
  And I am on the the shipping issue line items page
  And I click the "Blue" link
  And I click the "Edit Issue" link
  And I fill in the text field "1" with "Updated by Creator"
  And I click the "Save Issue" button
  And I am on the the shipping issue line items page
  And I click the "Blue" link
  And I fill in the text field "1" with "Hello World"
  And I wait for "3" seconds
  And I click the "Post Reply" button
  And I click the "Logout" link
	
Scenario: A NON-CA Person can mediate issues assigned to their organization (VIEW, POST, EDIT, EXPORT, RESOLVE, REOPEN)
  And I am on the edit shipping issue type page
  And I am on the issues page
  And I click the "ADD ISSUES" div
  And I select "Owens & Minor" from "issue_responder_id"
  And I fill in the text field "1" with "Red"
  And I fill in the text field "2" with "Blue"
  And I click the "Save" button
  And I click the "Logout" link
  And I login with "rdownie+jmediator@qamail1.rollstream.com"
  And I am on the the shipping issue line items page
  And I click the "Blue" link
  And I click the "Edit Issue" link
  And I fill in the text field "1" with "Updated by Mediator"
  And I click the "Save Issue" button
  And I am on the the shipping issue line items page
  And I click the "Blue" link
  And I fill in the text field "1" with "Hello World"
  And I wait for "4" seconds
  And I upload "Companies.xls" to the "comment_files_attributes_0_uploaded_data" file field
  And I click the "Post Reply" button
  And I click the "Resolve Line Item" link
  Then I should see the text "The line item status has been changed to Resolved"
  Then I should NOT see the exact text "Resolve"
  And I am on the the shipping issue line items page
  Then I should see the text "Resolved"
  And I click the "Blue" link
  And I click the "Re-Open Line Item" link
  Then I should NOT see the exact text "Close Line Item"
  And I am on the the shipping issue line items page
  Then I should see the text "Closed"
  And I click the "Logout" link

Scenario: Add More Issues Link
  And I am on the issues page
  And I click the "ADD ISSUES" div
  And I select "PING" from "issue_responder_id"
  And I fill in the text field "1" with "Red"
  And I fill in the text field "2" with "Blue"
  And I fill in the text field "3" with "Red"
  And I fill in the text field "4" with "Red"
  And I fill in the text field "5" with "Red"
  And I fill in the text field "6" with "Red"
  And I click the "add_more_rows" link
  And I fill in the text field "7" with "Red"
  And I fill in the text field "8" with "Red"
  And I fill in the text field "9" with "Red"
  And I fill in the text field "10" with "Red"
  And I fill in the text field "11" with "Red"
  And I click the "Save" button
  
# Scenario: DEV-3860 - Implement cucumber stories for adding & editing issues that include file upload fields