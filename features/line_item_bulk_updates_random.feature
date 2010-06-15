@set4 @issue_bulk_updates
Feature: Search/Update and Unauthorized scenarios

Background:
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
  
Scenario: Searching and Bulk updating by Selected rows    
  And I click the "search_responder_company_id" checkbox
  And I fill in the text field "search_for_responder_company_id" with "OM"
  And I click the "Search" link
  And I wait for "3" seconds
  And I select "Mark Pending" from "bulkOperations"
  And I set checkbox "2" in the search results
  And I click the "Update" link
  And I click the "Proceed With Update" button
  And I click the "Click here" link
  And I click the "MANAGE ISSUES" div
  Then I should see the text "Pending(1)"
  Then I should see the text "Open(1)"
  And I click the "Logout" link

Scenario: Searching and Bulk updating by Selected rows after clicking "Check All" checkbox   
And I click the "search_responder_company_id" checkbox
And I fill in the text field "search_for_responder_company_id" with "OM"
And I click the "Search" link
And I wait for "3" seconds
And I select "Mark Pending" from "bulkOperations"
And I set checkbox "1" in the search results
And I click the "Update" link
And I click the "Proceed With Update" button
And I click the "Click here" link
And I click the "MANAGE ISSUES" div
Then I should see the text "Pending(2)"
Then I should see the text "Open(0)"
And I click the "Logout" link

Scenario: Verify unauthorized message in Bulk Update
Given I login with "rdownie+jparticipant@qamail1.rollstream.com"
Given I am on the shipping issue line items page
And I select "Mark Pending" from "bulkOperations"
And I set checkbox "1" in the search results
And I click the "Update" link
And I click the "Proceed With Update" button
And I click the "Logout" link
Given I login with "rdownie+jparticipant@qamail1.rollstream.com"
Given I am on the shipping issue line items page
And I select "Mark Pending" from "bulkOperations"
And I set checkbox "2" in the search results
And I click the "Update" link
And I click the "Proceed With Update" button
And I wait for "3" seconds
Then I should see the text "1 error occurred while attempting to update 1 line item"
And I click the "Click here" link
And I click the "MANAGE ISSUES" div
Then I should see the text "Pending(2)"
Then I should see the text "Open(0)"
And I click the "Logout" link