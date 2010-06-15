@set3 @production @issue_save_search
Feature: General Issue Search Scenarios that require data

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

		Scenario: Save Search for Issues
		  Given I am on the new issues page
		  And I select "PING" from "1"
		  And I fill in the text field "1" with "Blue"
		  And I fill in the text field "2" with "Black"
		  And I click the "Save" button
		  Given I am on the issues page
		  And I click the "Save Search" link
		  And The Issues Save Search Name gets saved with "PING44"
		  And I click the "Save" button
		  And I wait for "3" seconds
		  And I refresh the page
		  And I wait for "3" seconds
		  Then I click the "PING44" link
			And I click the "Logout" link

		Scenario: Save Search for Line Items
		  Given I am on the new issues page
		  And I select "PING" from "1"
		  And I fill in the text field "1" with "Blue"
		  And I fill in the text field "2" with "Black"
		  And I click the "Save" button
		  Given I am on the issues page
		  And I click the "MANAGE LINE ITEMS" div
		  And I click the "Save Search" link
		  And The Line Item Save Search Name gets saved with "PING44"
		  And I click the "Save" button
		  And I wait for "3" seconds
		  And I refresh the page
		  And I wait for "3" seconds
		  Then I click the "PING44" link
		  Given I am on the issues page
		  Then I should NOT see the text "PING44"
			And I click the "Logout" link