#This feature must be run as a feature file not individual scenarios in order to work correctly
@set4 @imports
Feature: O&M Import

Scenario: Setup
  Given I login with "rdownie@qamail1.rollstream.com"
  And I reset the Issues data


Scenario Outline: Add Owens & Minor Form Fields
  And I am on the Issues page
  And I click the "ADMIN" div
  And I click the "Shipping Dispute" link
  And I click the "Text Column" under "issue_links"
  And I fill in the text field "1" with <form_name>
  And I click the "Add Column" button

  Examples:
    | form_name        |
    | "FormNumber"     |
    | "CreateDate"     |
    | "UserID"     |
    | "SupplierContactName"     |
    | "SupplierPhone"     |
    | "SupplierFax"     |
    | "SupplierEmail"     |
    | "SupplierBackupContact"     |
    | "SupplierNumber"     |
    | "AccountNumber"     |
    | "SupplierDCLocation"     |
    | "CustOrderNumber"     |
    | "BillOfLadingNumber"     |
    | "PRONumber"     |
    | "ShipDate"     |
    | "OMContactName"     |
    | "OMPhone"     |
    | "OMFax"     |
    | "OMEmail"     |
    | "DCNumber"     |
    | "DCName"     |
    | "DCAddress"     |
    | "DCCityState"     |
    | "NoPackagingSlipBillOfLading"     |
    | "ProductDamaged"     |
    | "PalletInPoorCondition"     |
    | "ShrinkWrapBroken"     |
    | "DifficultyReceivingPallets"     |
    | "ShrinkWrapQuality"     |
    | "MerchandiseShortage"     |
    | "MerchandiseOverage"     |
    | "DamagedRefused"     |
    | "Other"     |
    | "Other1"     |
    | "Explanation"     |
    | "Resolution"     |
    | "SupplierRGANumber"     |
    | "SupplierReferenceNumber"     |
    | "ReturnToAddress"     |
    | "RestockFee"     |
    | "Other2"     |

Scenario Outline: Add Owens & Minor Line Item Fields
  And I am on the Issues page
  And I click the "ADMIN" div
  And I click the "Shipping Dispute" link
  And I click the "Text Column" under "line_item_links"
  And I fill in the text field "1" with <line_item_name>
  And I click the "Add Column" button
  
  Examples:
    | line_item_name        |
    | "ItemCode"     |
    | "Qty"     |
    | "UOM"     |
    | "Type"     |
    | "Comments"     |
    
Scenario: Upload OM .csv
    And I am on the Issues page
    And I click the "ADMIN" div
    And I click the "+ Add Issue Type" link
    And I fill in the text field "issue_type_name" with "Pricing"
    And I fill in the text field "issue_type_abbreviation" with "PR44"
    And I select "ISSUE Creator" from "issue_type_creator_business_role_id"
    And I select "ISSUE Mediator" from "issue_type_mediator_business_role_id"
    And I select "ISSUE Manager" from "issue_type_manager_business_role_id"
    And I select "ISSUE Participant" from "issue_type_participant_business_role_id"
    And I click the "Save" button
    And I click the "MANAGE LINE ITEMS" div
    And I click the "Pricing" link
    
    And I click the "Logout" link
    Given I login with "rdownie+hcreator@qamail1.rollstream.com"
    And I am on the issues page
    And I click the "MANAGE LINE ITEMS" div
    And I click the "Shipping Dispute" link
    And I click the "Import" link
    And I wait for "5" seconds
    And I upload "owens_minor_daily_disputes.csv" to the "import_uploaded_data" file field
    And I click the "Next" link
  	And I wait for "60" seconds
    And I click the "Next" link
  	And I wait for "60" seconds
    And I click the "Next" link
  	And I wait for "60" seconds
    And I click the "Next" link
  	And I wait for "60" seconds
    And I click the "Finish" link
    And I click the "Logout" link
  