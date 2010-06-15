
@wip @activities
Feature: Internet Explorer

Scenario: Suspend an activity
  Given I login as a Community Administrator
  And I reset projects and activities
  Given I add a "Send a Message" activity to an existing project
  And I start the activity
  And I click the "1 Activity" link
  #And I click the "Suspend" div
  And I suspend the activity
  # And I click row "1" in the "list" table
  # Then I confirm javascript popup
  # Try deleting activities that are in different states
  # Try choosing 'no' to the delete confirmation
  # Try choosing 'yes' to the delete confirmation
  # Cancel
  
@set5 @IE
Scenario: Click JS Prompt
  Given I login with "rdownie@qamail1.rollstream.com"
  And I am on the issues page
  And I select "Mark Open" from "bulkOperations"
  And I click the "Update" link
  And I click the ie ok popup
  