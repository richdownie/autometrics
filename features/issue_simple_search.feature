Feature: UI Search Scenarios that require no data

Background:
  Given I login as a Community Administrator

@production
Scenario: Cancel out of Save Search
	Given I am on the issues page
	And I click the "Save Search" link
	And I wait for "2" seconds
	And The Issues Save Search Name gets saved with "PING"
	And I click the "Cancel" button
	And I click the "Logout" link
	
@wip
Scenario: Toggle Search Area for Issues DEV-3936
  Given I am on the issues page
  And I click the "Show Search" link
  And I click the "Hide Search" link