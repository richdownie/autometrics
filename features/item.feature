@set3 @production @items
Feature: Items Feature

Background:
  Given I login as a Community Administrator
  And I reset the Items data
	
Scenario: View Index list
  Then I should see the text "2 Items"
  And I click the "Logout" link
  
Scenario: Edit an Item
  And I click the "Edit" div
  And I wait for "2" seconds
  And I fill in the text field "item_name" with "Updated Item Name"
  And I fill in the text field "item_lot_number" with "11111"
  And I fill in the text field "item_code" with "22222"
  And I fill in the text field "item_description" with "Blah, Blah, Blah"
  And I fill in the text field "item_notes" with "Added Notes"
  And I click the "Save" button
  And I click the "Logout" link
	
Scenario: Delete an Item
  And I click the "Delete" div
  And I click the "Delete" button
  Then I should see the text "Item Deleted"
  And I click the "Logout" link

Scenario: Create a new Item at the Hub
  Given I am inside the Hub Company
  And I click the "ITEMS" div
  And I click the "add_item_button" div
  And I fill in the text field "item_name" with "TestItem"
  And I click the "save" button
  And I click the "Logout" link

Scenario: Upload a file to an existing Item
  And I click the "Edit" div
  And I wait for "5" seconds
  And I upload "Companies.csv" to the "document" file field
  And I click the "Save" button
  And I click the "Logout" link

Scenario: Upload a file to a new Item
  And I click the "Edit" div
  And I wait for "5" seconds
  And I fill in the text field "item_name" with "Updated Item Name"
  And I upload "Companies.csv" to the "document" file field
  And I click the "Save" button
  And I click the "Logout" link

Scenario: Quick Search	
  And I click the "Advanced Search" link
  And I click the "Quick Search" link
  And I wait for "5" seconds
  And I fill in the text field "quick_search_field_id" with "url"
  And I click the "quick_search_search" button
  Then I should see the text "Item with url"
  And I click the "Logout" link

Scenario: Advanced Search	
  And I click the "Advanced Search" link
  And I fill in the text field "items_code" with "44Cuse"
  And I click the "advanced_search_search" button
  Then I should see the text "Item Name"
  Then I should NOT see the exact text "Item with url"
  And I click the "Logout" link

Scenario: Clear Search		
  And I fill in the text field "quick_search_field_id" with "url"
  And I click the "quick_search_search" button
  And I click the "quick_search_clear" button
  And I wait for "5" seconds
  Then I should see the text "Item Name"
  Then I should see the text "Item with url"
  And I click the "Logout" link

Scenario: Invalid Item Save		
  Given I am inside the Hub Company
  And I click the "ITEMS" div
  And I click the "add_item_button" div
  And I click the "Save" button
  And I wait for "5" seconds
  Then I should see the text "Name can't be blank"
  And I click the "Logout" link

Scenario: Link an Item to google.com
  Given I am inside the Hub Company
  And I click the "ITEMS" div
  And I click the "add_item_button" div
  And I fill in the text field "item_name" with "TestItem"
  And I click the "Or click here to link to an existing document" link
  And I fill in the text field "item_document_url" with "http://www.google.com"
  And I click the "Save" button
  And I click the "Logout" link

Scenario: Cancel out		
  Given I am inside the Hub Company
  And I click the "ITEMS" div
  And I click the "add_item_button" div
  And I click the "Cancel" button
  And I click the "Logout" link

Scenario: Save and Add New
  Given I am inside the Hub Company
  And I click the "ITEMS" div
  And I click the "add_item_button" div
  And I fill in the text field "item_name" with "A Third Item"
  And I click the "save_and_new" button
  And I wait for "5" seconds
  And I fill in the text field "item_name" with "A Fourth Item"
  And I click the "Logout" link
