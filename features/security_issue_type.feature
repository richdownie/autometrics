@set2 @production @issues
Feature: Issue Types Security Access

Scenario: Accessing as a logged-in spoke contact	
  Given I login as a Spoke Contact
  When I am on the shipping issue type page
  Then I am redirected to ""
  Then I click the "Logout" link

Scenario: Accessing a shipping issue as a community administrator for a community with access to issue management
  Given I login as a Community Administrator
  When I am on the issues page
  And I click the "ADMIN" div
  And I click the "Shipping Dispute" link
  Then I should see the text "Shipping Dispute Issue Configuration"
  And I should see the text "Columns for Issues"
  And I should see the text "Columns for Line Items"
  Then I click the "Logout" link

 Scenario: Accessing as a community administrator for a community without access to issue resolution
   Given I login as a Community Administrator
   And I disable issue resolution for the Community
   When I am on the shipping issue type page
   Then I am redirected to ""
   When I am on the issues page
   Then I am redirected to ""
   When I am on the new issues page
   Then I am redirected to ""
   When I am on the the shipping issue line items page
   Then I am redirected to ""
   Then I reset the Issues data
   Then I click the "Logout" link