@set3 @issue_custom_fields 
Feature: General Issue Custom Field Scenarios

Background:
  Given I login as a Community Administrator
  And I reset the Issues data
  And I am on the edit shipping issue type page
  And I select "ISSUE Creator" from "issue_type_creator_business_role_id"
  And I select "ISSUE Mediator" from "issue_type_mediator_business_role_id"
  And I select "ISSUE Manager" from "issue_type_manager_business_role_id"
  And I select "ISSUE Participant" from "issue_type_participant_business_role_id"
  And I click the "Save" button

Scenario: Standard Edit Role Check between Manager and Mediator
  And I am on the Issues page
  And I click the "ADMIN" div
  And I click the "Shipping Dispute" link
  And I click the "Text Column" under "issue_links"
  And I fill in the text field "1" with "Form Color?"
  And I verify all checkboxes are unchecked
  And I click the "1" checkbox
  And I click the "Add Column" button
  And I click the "Text Column" under "line_item_links"
  And I fill in the text field "1" with "Line Item Color?"
  And I verify all checkboxes are unchecked
  And I click the "1" checkbox
  And I click the "Add Column" button
  And I am on the issues page
  And I click the "ADD ISSUES" div
  And I select "Owens & Minor" from "issue_responder_id"
  And I fill in the text field "1" with "Red"
  And I fill in the text field "2" with "Blue"
  And I click the "Save" button
  Given I login with "rdownie+jmanager@qamail1.rollstream.com"
  And I am on the the shipping issue line items page
  And I click the "Blue" link
  And I click the "Edit Issue" link
  And I wait for "3" seconds
  And I fill in the text field "issue_form_response_attributes_sti_answers_attributes_0_value" with "UpdatedRed"
  And I click the "Save Issue" button
  And I wait for "3" seconds
  Then I should see the text "UpdatedRed"
  And I click the "Logout" link
  Given I login with "rdownie+jmediator@qamail1.rollstream.com"
  And I am on the the shipping issue line items page
  And I click the "Blue" link
  Then I should NOT see the text "Edit Issue"
  Then I should NOT see the text "Edit Line Item"

# @wip
# Scenario: DEV-3860 - Implement cucumber stories for adding & editing issues that include file upload fields
#   And I am on the Issues page
#   And I click the "ADMIN" div
#   And I click the "Shipping Dispute" link
#   And I click the "File-Upload Column" under "issue_links"
#   And I fill in the text field "1" with "FormFileUploadsHere"
#   And I click the "Add Column" button
#   And I click the "File-Upload Column" under "line_item_links"
#   And I fill in the text field "1" with "LineItemFileUploadsHere"
#   And I click the "Add Column" button
#   And I click the "ADD ISSUES" div
#   And I select "Owens & Minor" from "issue_responder_id"
#   And I upload "issue_import.csv" to the "issue_form_response_attributes_sti_answers_attributes_0_value" file field
#   And I upload "issue_import.csv" to the "issue_line_items_attributes_0_form_response_attributes_sti_answers_attributes_0_value" file field
#   And I click the "Save" button
#   And I click the "Logout" link
#   Given I login with "rdownie+jmediator@qamail1.rollstream.com"
#   And I am on the the shipping issue line items page
#   And I click the "Blue" link
#   And I click the "Edit Line Item" link
#   And I wait for "3" seconds
#   And I upload "issue_import.xls" to the "line_item_form_response_attributes_sti_answers_attributes_0_value" file field
#   And I click the "Save Issue" button
#   And I wait for "3" seconds
#   Then I should see the text "issue_import.xls"
#   