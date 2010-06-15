@set2 @admin @permissions @production 
Feature: Admin Scenarios

Scenario: Available to Community Administrator Only
	Given I login as a Spoke Contact
	And I am on the admin page
	Then I am redirected to "permission_error/community_manage_community"
  And I click the "Logout" link
	Given I login as a Hub Project Administrator
	And I am on the admin page
	Then I am redirected to "permission_error/community_manage_community"
  And I click the "Logout" link
	Given I login as a Spoke Company Administrator
	And I am on the admin page
	Then I am redirected to "permission_error/community_manage_community"
  And I click the "Logout" link
	Given I login as an Employee
	And I am on the admin page
	Then I am redirected to "permission_error/community_manage_community"
  And I click the "Logout" link
	Given I login as a Community Administrator
	And I am on the admin page
	Then I am redirected to "admin"
  And I click the "Logout" link

Scenario: Manage Default Permissions For New Projects 
  Given I login as a Community Administrator
  And I am on the default project permissions page
  Then I should see the text "Participant"
  Then I should see the text "Team"
  Then I should see the text "Project Owner"
  Then I should see the text "Community Administrator"
  Then I should see the text "Activities"
  Then I should see the text "Files"
  Then I should see the text "Milestones"
  Then I should see the text "Projects"
  Then I should see the text "Web Forms"
  And I click the "Logout" link

Scenario: View Community Level Permissions
  Given I login as a Community Administrator
  And I am on the view community permissions page
  Then I should see the text "Contact"
  Then I should see the text "Company Administrator"
  Then I should see the text "Employee"
  Then I should see the text "Project Administrator"
  Then I should see the text "Community Administrator"
  Then I should see the text "Companies"
  Then I should see the text "Contacts"
  Then I should see the text "Items"
  Then I should see the text "Custom Fields"
  Then I should see the text "Projects"
  Then I should see the text "Tags"
  Then I should see the text "Workspaces"
  And I click the "Logout" link

Scenario: View Community Level Permissions
  Given I login as a Community Administrator
  And I am on the community settings page
  And I click the "new_ui_blue_button_inner" div
  And I fill in the text field "community_name" with "Update"
  And I click the "community_enable_company_divisions" checkbox
  And I fill in the text field "community_session_expiration_interval" with "100"
  And I fill in the text field "community_relay_server_hostname" with "test"
  And I fill in the text field "community_relay_server_port" with "test"
  And I fill in the text field "community_from_email_address" with "test"
  And I fill in the text field "community_reply_to_email_address" with "test"
  And I click the "community_enable_generate_company_id" checkbox
  And I click the "Cancel" div