 @issue_sort
Feature: General Issue Sort Scenarios

Scenario: Setting up for below scenarios:
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
  
Scenario Outline: Sort Columns on MANAGE LINE ITEMS
  Given I am on the issues page
  And I click the "MANAGE LINE ITEMS" div
  And I click the <link> link
  
  Examples:
    | link                |
    | "Organization"      |
    | "Company"           |
    | "Status"            |
    | "Date Created"      |
    | "Form Color?"       |
    | "Line Item Color?"  |
  

Scenario Outline: Sort Columns on MANAGE ISSUES
  Given I am on the issues page
  And I click the "MANAGE ISSUES" div
  And I click the <link> link

    Examples:
      | link                |
      | "Organization"      |
      | "Company"           |
      | "Status"            |
      | "Date Created"      |
      | "Form Color?"       |

Scenario Outline: Sort Columns on MANAGE LINE ITEMS
  Given I login as a Community Administrator
  And I am on the issues page
  And I click the "MANAGE LINE ITEMS" div
  And I fill in the text field "search_for_initiator_company_id" with "AUTO44"
  And I click the "Search" link
  And I click the <link> link

    Examples:
      | link                |
      | "Organization"      |
      | "Company"           |
      | "Status"            |
      | "Date Created"      |
      | "Form Color?"       |
  
  
