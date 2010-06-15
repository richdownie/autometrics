@set3 @production @issue_search
Feature: General Issue Search Scenarios

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
  And I am on the edit shipping issue type page
  And I select "ISSUE Creator" from "issue_type_creator_business_role_id"
  And I select "ISSUE Mediator" from "issue_type_mediator_business_role_id"
  And I select "ISSUE Manager" from "issue_type_manager_business_role_id"
  And I select "ISSUE Participant" from "issue_type_participant_business_role_id"
  And I click the "Save" button
  And I click the "ADD ISSUES" div
  And I select "Owens & Minor" from "issue_responder_id"
  And I fill in the text field "1" with "Black"
  And I fill in the text field "2" with "Red"
  And I click the "Save" button
  And I click the "ADD ISSUES" div
  And I select "PING" from "issue_responder_id"
  And I fill in the text field "1" with "Yellow"
  And I fill in the text field "2" with "Purple"
  And I click the "Save" button
 
Scenario: Search by company id
  Given I am on the issues page
  And I click the "search_responder_company_id" checkbox
  And I fill in the text field "search_for_responder_company_id" with "OM"
  And I click the "Search" link
  And I wait for "3" seconds
  Then I should NOT see the text "PING"
  Then I should see the text "Owens & Minor"
  And I fill in the text field "search_for_responder_company_id" with "OM, ping44"
  And I click the "Search" link
  And I wait for "3" seconds
  Then I should see the text "Owens & Minor"
  Then I should see the text "PING"
  Then I should see the text "Black"
  Then I should see the text "Yellow"

Scenario: Search by company name
  Given I am on the issues page
  And I click the "search_responder_company_name" checkbox
  And I fill in the text field "search_for_responder_company_name" with "Owens & Minor"
  And I click the "Search" link
  And I wait for "3" seconds
  Then I should NOT see the text "PING"
  Then I should see the text "Owens & Minor"
  Then I should see the text "Black"
  
Scenario: Search by creator email
  Given I am on the issues page
  And I click the "search_issue_creator_email" checkbox
  And I fill in the text field "search_for_issue_creator_email" with "rdownie@qamail1.rollstream.com"
  And I click the "Search" link
  And I wait for "3" seconds
  And I wait for "3" seconds
  Then I should see the text "Owens & Minor"
  Then I should see the text "PING"
  Then I should see the text "Black"
  Then I should see the text "Yellow"
  
@wip
Scenario: DEV-3852 - Implement cucumber scenarios to search by originating company

@wip	
Scenario: DEV-3795 -Implement cucumber stories for searching core fields by multiple values
	
@wip
Scenario: DEV-3796 - Implement cucumber stories for showing/hiding the search area