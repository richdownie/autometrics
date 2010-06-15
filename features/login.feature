@set2 @login @production
Feature: Login as different Roles and verify app security

Scenario: Login as a Community Administrator
        #has access to all communities, hubs, spokes, contacts and employees
	Given I login as a Community Administrator
	Then I check for the header and footer
	Then I should see the text "Home"
	Then I should see the text "Admin"
	Then I should see the text "Projects"
	Then I should see the text "Profiles"
	Then I should see the text "Contacts"
	Then I should see the text "Companies"
	Then I should see the text "My Company"
	Then I should see the text "Applications"
	Then I should see the text "Registration"
	Then I should see the text "Change Management"
	Then I should see the text "Workspaces"
	Then I should see the text "DASHBOARD"
	Then I should see the text "INBOX"
	Then I should see the text "YOUR PROFILE"
	And I click the "Logout" link

Scenario: Login as a Project Administrator 
#Community Administrator creates by checking the "Project Administrator" 
#box when adding a Contact inside a "Hub" Company => picks up "Employee" by default
	Given I login as a Hub Project Administrator
	Then I check for the header and footer
	Then I should see the text "Home"
	Then I should see the text "Projects"
	Then I should see the text "Profiles"
	Then I should see the text "Contacts"
	Then I should see the text "Companies"
	Then I should see the text "My Company"
	Then I should see the text "Applications"
	Then I should see the text "Registration"
	Then I should see the text "Change Management"
	Then I should see the text "Workspaces"
	Then I should see the text "DASHBOARD"
	Then I should see the text "INBOX"
	Then I should see the text "YOUR PROFILE"
	And I click the "Logout" link

Scenario: Login as a Spoke Company Administrator 
#Community Administrator creates by checking "Company Administrator" 
#when adding a Contact inside a "Spoke" Company
	Given I login as a Spoke Company Administrator
	Then I check for the header and footer
	Then I should see the text "Home"
	Then I should see the text "My Company"
	Then I should see the text "Applications"
	Then I should see the text "Change Management"
	Then I should see the text "INBOX"
	Then I should see the text "YOUR PROFILE"
	And I click the "Logout" link

Scenario: Login as an Employee 
#Community Administrator creates by adding a Contact to a "Hub"
	Given I login as an Employee
	Then I check for the header and footer
	Then I should see the text "Home"
	Then I should see the text "Profiles"
	Then I should see the text "Contacts"
	Then I should see the text "Companies"
	Then I should see the text "My Company"
	Then I should see the text "Applications"
	Then I should see the text "Registration"
	Then I should see the text "Change Management"
	Then I should see the text "INBOX"
	Then I should see the text "YOUR PROFILE"
	Then I should see the text "DASHBOARD"
	And I click the "Logout" link

Scenario: Login as a Spoke Contact
#Community Administrator creates by adding a Contact to a "Spoke"
	Given I login as a Spoke Contact
	Then I check for the header and footer
	Then I should see the text "Home"
	Then I should see the text "Applications"
	Then I should see the text "My Company"
	Then I should see the text "Change Management"
	Then I should see the text "INBOX"
	Then I should see the text "YOUR PROFILE"
	And I click the "Logout" link