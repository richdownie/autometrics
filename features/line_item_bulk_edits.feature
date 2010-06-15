@set4 @issue_bulk_updates
Feature: Search/Update and Unauthorized scenarios

Background:
  Given I login as a Community Administrator
  And I reset the Issues data
  And I am on the Issues page
  And I click the "ADMIN" div
  And I click the "Shipping Dispute" link
  And I click the "Click Here" link
  And I select "ISSUE Creator" from "issue_type_creator_business_role_id"
  And I select "ISSUE Mediator" from "issue_type_mediator_business_role_id"
  And I select "ISSUE Manager" from "issue_type_manager_business_role_id"
  And I select "ISSUE Participant" from "issue_type_participant_business_role_id"
  And I click the "Save" button
  And I click the "Text Column" under "issue_links"
  And I fill in the text field "1" with "Form Color?"
  And I verify all checkboxes are unchecked
  And I click the "question_issue_field_authorizations_attributes_0_editable" checkbox
  And I click the "Add Column" button
  And I click the "Text Column" under "line_item_links"
  And I fill in the text field "1" with "Line Item Color?"
  And I verify all checkboxes are unchecked
  And I click the "question_issue_field_authorizations_attributes_0_editable" checkbox
  And I click the "Add Column" button
  And I click the "ADD ISSUES" div
  And I select "Owens & Minor" from "issue_responder_id"
  And I fill in the text field "1" with "Purple"
  And I fill in the text field "2" with "Orange"
  And I fill in the text field "3" with "Green"
  And I click the "Save" button
  And I click the "ADD ISSUES" div
  And I select "PING" from "issue_responder_id"
  And I fill in the text field "1" with "Black"
  And I fill in the text field "2" with "Red"
  And I fill in the text field "3" with "Blue"
  And I click the "Save" button
  
Scenario: CA can Bulk Edit  
  And I select "Edit" from "bulkOperations"
  And I verify all checkboxes are checked
  And I click the "Update" link
  And I click the "1" checkbox
  # And I sleep for "5" seconds
  And I fill in the text field "1" with "Updated"
  And I click the "Proceed With Update" button
  Then I should see the text "Updated"
  And I click the "Logout" link
  
Scenario: Mediator can Bulk Edit  
  And I click the "Logout" link
  Given I login with "rdownie+jmediator@qamail1.rollstream.com"
  And I am on the Issues page
  And I click the "MANAGE LINE ITEMS" div
  And I select "Edit" from "bulkOperations"
  And I verify all checkboxes are checked
  And I click the "Update" link
  And I click the "1" checkbox
  # And I sleep for "5" seconds
  And I fill in the text field "1" with "Updated"
  And I click the "Proceed With Update" button
  Then I should see the text "Updated"
  And I click the "Logout" link
  
Scenario: Manager cannot Bulk Edit
  And I click the "Logout" link
  Given I login with "rdownie+jmanager@qamail1.rollstream.com"
  And I am on the Issues page
  And I click the "MANAGE LINE ITEMS" div
  And I select "Edit" from "bulkOperations"
  And I verify all checkboxes are checked
  And I click the "Update" link
  Then I should find the "line_item_form_response_attributes_sti_answers_attributes_0_value" text field disabled
  And I click the "Logout" link
  
