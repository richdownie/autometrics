@set2 @production @workspaces
Feature: Conversations

Background: Setup Workspaces and go to index page
	Given I login as a Community Administrator
	And I reset the Workspaces data
	And I am on the workspaces page
  And I click the "View" div
  And I click the "Start a Conversation" link

Scenario: Start a new Conversation and Attach a file that is copied to the Content Library
  And I fill in the text field "1" with "Hello World!"
  And I fill in the text field "2" with "I'm about to upload this file, please respond"
  And I click the "Attach a File" link
  And I wait for "2" seconds
  And I click the "1" checkbox
  And I click the "Create Conversation" button
  And I click the "Hello World!" link
  And I click the "Logout" link

Scenario: Start a new Conversation and Insert Link to Content Library File
  And I fill in the text field "1" with "Four Score and Seven Years Ago!"
  And I fill in the text field "2" with "From Gettysburg"
  And I click the "Attach a File" link
  And I wait for "2" seconds
  And I click the "2" checkbox
  And I click the "Create Conversation" button
  And I click the "Logout" link