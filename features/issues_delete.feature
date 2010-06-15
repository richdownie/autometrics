@set3 @issues
Feature: General Issue Delete Scenarios

Scenario: Setup
  Given I login with "rdownie@qamail1.rollstream.com"
  And I reset the Issues data
  And I am on the Issues page
  And I click the "ADMIN" div
  And I click the "Shipping Dispute" link
  And I click the "Text Column" under "issue_links"
  And I fill in the text field "1" with "Form Question"
  And I click the "Add Column" button
  And I click the "Text Column" under "line_item_links"
  And I fill in the text field "1" with "Line Item Question"
  And I click the "Add Column" button
  And I am on the edit shipping issue type page
  And I select "ISSUE Creator" from "issue_type_creator_business_role_id"
  And I select "ISSUE Mediator" from "issue_type_mediator_business_role_id"
  And I select "ISSUE Manager" from "issue_type_manager_business_role_id"
  And I select "ISSUE Participant" from "issue_type_participant_business_role_id"
  And I click the "Save" button
  And I click the "ADD ISSUES" div
  And I select "Owens & Minor" from "1"
  And I fill in the text field "1" with "Blue"
  And I fill in the text field "2" with "Black"
  And I click the "Save" button
  And I click the "Logout" link

Scenario Outline:
  Given I login with <user>
  And I am on the issues page
  And I click the "MANAGE ISSUES" div
  And I click the "Open(1)" link
  And I click the "Open" link
  Then I should see the text "Delete Issue"
  
  Examples:
  | user                                       |
  | "rdownie@qamail1.rollstream.com"           |
  | "rdownie+hmediator@qamail1.rollstream.com" |
  | "rdownie+jmanager@qamail1.rollstream.com"  |
