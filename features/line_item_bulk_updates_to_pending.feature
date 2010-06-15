@set4 @issue_bulk_updates
Feature: General Issue Bulk Change Scenarios

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

Scenario: Update to Pending "All Search" results as Community Administrator
  And I select "Mark Pending" from "bulkOperations"
  And I click the "2" radio button
  And I click the "Update" link
  And I click the "Proceed With Update" button
  Then I should see the text "4 line items were successfully updated!"
  And I click the "Click here" link
  And I click the "MANAGE ISSUES" div
  Then I should see the text "Pending(2)"
  Then I should see the text "Open(0)"
  And I click the "Logout" link
  
Scenario: Update to Pending "All Search" results as Organization (Hub) Manager
  And I click the "Logout" link
  Given I login with "rdownie+hmanager@qamail1.rollstream.com"
  Given I am on the shipping issue line items page
  And I select "Mark Pending" from "bulkOperations"
  And I click the "2" radio button
  And I click the "Update" link
  And I click the "Proceed With Update" button
  Then I should see the text "4 line items were successfully updated!"
  And I click the "Click here" link
  And I click the "MANAGE ISSUES" div
  Then I should see the text "Pending(2)"
  Then I should see the text "Open(0)"
  And I click the "Logout" link
  
Scenario: Update to Pending "All Search" results as Company (Spoke) Manager
  And I click the "Logout" link
  Given I login with "rdownie+jmanager@qamail1.rollstream.com"
  Given I am on the shipping issue line items page
  And I select "Mark Pending" from "bulkOperations"
  And I click the "2" radio button
  And I click the "Update" link
  And I click the "Proceed With Update" button
  Then I should see the text "2 line items were successfully updated!"
  And I click the "Click here" link
  And I click the "MANAGE ISSUES" div
  Then I should see the text "Pending(2)"
  Then I should see the text "Open(0)"
  And I click the "Logout" link
  
Scenario: Update to Pending "All Search" results as Organization (Hub) Mediator
  And I click the "Logout" link
  Given I login with "rdownie+hmediator@qamail1.rollstream.com"
  Given I am on the shipping issue line items page
  And I select "Mark Pending" from "bulkOperations"
  And I click the "2" radio button
  And I click the "Update" link
  And I click the "Proceed With Update" button
  Then I should see the text "4 line items were successfully updated!"
  And I click the "Click here" link
  And I click the "MANAGE ISSUES" div
  Then I should see the text "Pending(2)"
  Then I should see the text "Open(0)"
  And I click the "Logout" link
  
Scenario: Update to Pending "All Search" results as Company (Spoke) Mediator
  And I click the "Logout" link
  Given I login with "rdownie+jmediator@qamail1.rollstream.com"
  Given I am on the shipping issue line items page
  And I select "Mark Pending" from "bulkOperations"
  And I click the "2" radio button
  And I click the "Update" link
  And I click the "Proceed With Update" button
  Then I should see the text "2 line items were successfully updated!"
  And I click the "Click here" link
  And I click the "MANAGE ISSUES" div
  Then I should see the text "Pending(2)"
  Then I should see the text "Open(0)"
  And I click the "Logout" link
  
Scenario: Update to Pending "All Search" results as Organization (Hub) Participant
  And I click the "Logout" link
  Given I login with "rdownie+hparticipant@qamail1.rollstream.com"
  Given I am on the shipping issue line items page
  And I select "Mark Pending" from "bulkOperations"
  And I click the "2" radio button
  And I click the "Update" link
  And I click the "Proceed With Update" button
  Then I should see the text "You are not authorized to change the status of this line item from Open to Pending"
  And I click the "Click here" link
  And I click the "MANAGE ISSUES" div
  Then I should NOT see the text "Pending(2)"
  Then I should see the text "Open(2)"
  And I click the "Logout" link
  
Scenario: Update to Pending "All Search" results as Company (Spoke) Participant
  And I click the "Logout" link
  Given I login with "rdownie+jparticipant@qamail1.rollstream.com"
  Given I am on the shipping issue line items page
  And I select "Mark Pending" from "bulkOperations"
  And I click the "2" radio button
  And I click the "Update" link
  And I click the "Proceed With Update" button
  Then I should see the text "2 line items were successfully updated!"
  And I click the "Click here" link
  And I click the "MANAGE ISSUES" div
  Then I should see the text "Pending(2)"
  Then I should see the text "Open(0)"
  And I click the "Logout" link
  
Scenario: Update to Pending "All Search" results as Organization (Hub) Creator
  And I click the "Logout" link
  Given I login with "rdownie+hcreator@qamail1.rollstream.com"
  Given I am on the shipping issue line items page
  And I select "Mark Pending" from "bulkOperations"
  And I click the "2" radio button
  And I click the "Update" link
  And I click the "Proceed With Update" button
  And I click the "Click here" link
  And I click the "MANAGE ISSUES" div
  Then I should NOT see the text "Pending(2)"
  Then I should see the text "No results found"
  And I click the "Logout" link
  
Scenario: Update to Pending "All Search" results as Company (Spoke) Creator
  And I click the "Logout" link
  Given I login with "rdownie+jcreator@qamail1.rollstream.com"
  Given I am on the shipping issue line items page
  And I select "Mark Pending" from "bulkOperations"
  And I click the "2" radio button
  And I click the "Update" link
  And I click the "Proceed With Update" button
  And I click the "Click here" link
  And I click the "MANAGE ISSUES" div
  Then I should NOT see the text "Pending(2)"
  Then I should see the text "No results found"
  And I click the "Logout" link
  
  
  
# Scenario: Implement cucumber stories for bulk changing issue status
# 
# Scenario: Implement cucumber stories for bulk changing line item fields
# 
# Scenario: Implement cucumber stories for bulk changing line item status
# 
# Scenario: try all without searching
# Scenario: try a subset arrived at via search
# Scenario: try changing from all different other stati to a new status
# Scenario: try changing from one status to the same status (shouldn't be an option to do this)