@set1 @permissions @production
Feature: Companies => Registration Permissions for Custom Fields

Background: Start each Scenario with a clean slate
	Given I login as a Community Administrator
	And I am on the onboarding admin page
	Then I check for the header and footer
	And I verify all checkboxes are unchecked

Scenario: Verify columns and rows display on the page
	Then I should see the text "Requester"
	Then I should see the text "Pre-Approver"
	Then I should see the text "Primary Contact"
	Then I should see the text "Approver"
  And I click the "Logout" link