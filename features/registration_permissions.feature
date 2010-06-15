@set5 @production @registration

Feature: Registration Permissions
Background: Submit a new Registration Requests
	And I login as a Spoke Contact
	And I remove all existing Onboard Requests
	And I am on the change request page
	And I click the "Continue" button
	And I fill in the text field "onboarding_company_name" with random "Requested Company"
	And I fill in the text field "onboarding_company_email" with random "rdownie+requested_company@qamail1.rollstream.com"
	And I fill in the text field "onboarding_company_phone" with random "555-555-5555"
	And I fill in the text field "onboarding_company_address_line1" with "1 Future Ave"
	And I fill in the text field "onboarding_company_address_city" with "Rochester"
	And I fill in the text field "onboarding_company_address_state" with "NY"
	And I fill in the text field "onboarding_company_address_zip" with "14625"
	And I fill in the text field "onboarding_company_address_country" with "USA"
	And I click the "Primary Contact" link
	And I fill in the text field "onboarding_contact_first_name" with "Mike"
	And I fill in the text field "onboarding_contact_last_name" with "Requested_Contact"
	And I fill in the text field "onboarding_contact_email" with "rdownie+requested_contact@qamail1.rollstream.com"
	And I fill in the text field "onboarding_contact_work_phone" with "555-555-5555"
	And I click the "Submit Request" div
	And I wait for "3" seconds
	And I fill in the text field "request_first_name" with "Spoke"
	And I fill in the text field "request_last_name" with "Contact"
	And I fill in the text field "request_email" with "rdownie+sc@qamail1.rollstream.com"
	And I fill in the text field "request_phone" with "555-555-5555"
	And I fill in the text field "request_company_name" with "Ping"
	And I click the "191" div
	And I wait for "3" seconds
	And I close the anonymous user session
	
Scenario: Click through the Pre-Approver and Approver Process
  And I login as a Hub Project Administrator
  And I am on the onboarding requests page
  Then I should see the text "Pre Approver"
  And I click row "2" in the "onboarding_list" table
  And I click the "Approve Request" div
  And I click the "280" div
	And I wait for "3" seconds
  And I switch onboarding role to Approver
  And I click the "Logout" link
  And I login as an Employee
  And I am on the onboarding requests page
  Then I should see the text "Approver"
  And I click row "2" in the "onboarding_list" table
  And I click the "Register Request" div
	And I wait for "3" seconds
  And I fill in the text field "company_id" with random "Requested"
	
Scenario: I Decline a Request as a Project Amdinistrator
  And I login as a Hub Project Administrator
  And I am on the onboarding requests page
  Then I should see the text "Pre Approver"
  And I click row "2" in the "onboarding_list" table
  And I click the "Decline Request" div
	And I wait for "3" seconds
	And I fill in the text field "decline_reason" with "Testing Decline Process"
  And I click the "314" div

Scenario: Cancel and Save changes to a Registration Request	
	Given I only allow Pre-Approvers to Edit Company Info
  And I login as a Hub Project Administrator
  And I am on the onboarding requests page
  Then I should see the text "Pre Approver"
  And I click row "2" in the "onboarding_list" table
  And I click the "Company" link
  And I fill in the text field "onboarding_company_name" with "Updated_Requested_Company"
  And I click the "cancel_request_button" div
  Then I should NOT see the text "Updated_Requested_Company"
  And I click row "2" in the "onboarding_list" table
  And I click the "Company" link
  And I fill in the text field "onboarding_company_name" with "Updated_Requested_Company"
  And I click the "finish_request_button" div