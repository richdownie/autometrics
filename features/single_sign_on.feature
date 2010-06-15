@set2 @production @sso
Feature: Single Sign On
  
  In order to seamlessly access Rollstream
  As a user of an external system
  I want to be authenticated to Rollstream when already authenticated on a trusted, external system

  Background:
    Given I reset the SSO users data
	And I am on the hacks sso page
	
  Scenario Outline: Try to invoke SSO without specifying required parameters
   	Given I fill in the text field "sso_url" with <sso_url>
    And I fill in the text field "source" with <sso_source>
    And I fill in the text field "secret" with <sso_secret>
    And I fill in the text field "email" with <email>
    When I submit the form "sso_form"
    Then I should see the text <text>
    
    Examples:
    | sso_url                                            | sso_source | sso_secret                                 | email                            | text                     |  |
    | ""                                                 | ""         | ""                                         | ""                               | "Community Login"        |  |
    | ""                                                 | "MySystem" | "74421ea5268fc9a494f3ca69335754c831e9d064" | "rdownie@qamail1.rollstream.com" | "Community Login"        |  |
    | "https://qaauto.rollstream.com/authentication/sso" | ""         | "74421ea5268fc9a494f3ca69335754c831e9d064" | "rdownie@qamail1.rollstream.com" | "Invalid login request." |  |
    | "https://qaauto.rollstream.com/authentication/sso" | "MySystem" | ""                                         | "rdownie@qamail1.rollstream.com" | "Invalid login request." |  |
    | "https://qaauto.rollstream.com/authentication/sso" | "bogus"    | "74421ea5268fc9a494f3ca69335754c831e9d064" | "rdownie@qamail1.rollstream.com" | "Invalid login request." |  |
    | "https://qaauto.rollstream.com/authentication/sso" | "MySystem" | "adsfqwer3dffadsf"                         | "rdownie@qamail1.rollstream.com" | "Invalid login request." |  |
	
  Scenario Outline: Access various pages as an existing user
    Given I set the main sso fields
    And I fill in the text field "email" with <email>
    And I fill in the text field "destination" with <destination>
    And I fill in the text field "on_error" with <on_error>
    And I fill in the text field "on_logout" with <on_logout>
    When I submit the form "sso_form"
    Then I should see the text <text>
    And I should see the div <div>
    And I click the "Logout" link

    Examples:
    | email                            | destination      | on_error | on_logout | text                        | div           |
    | "rdownie@qamail1.rollstream.com" | ""               | ""       | ""        | "Home » Dashboard"          | "AUTO"        |
    | "rdownie@qamail1.rollstream.com" | "/organizations" | ""       | ""        | "Companies » All Companies" | "ADD COMPANY" |
    | "rDowNIe@QAmaIl1.RollSTReam.Com" | "/people"        | ""       | ""        | "Contacts » All Contacts"   | "ADD CONTACT" |
   
 

  Scenario Outline: Access various pages as an existing user, exception cases
    Given I set the main sso fields
    And I fill in the text field "email" with <email>
	And I fill in the text field "destination" with <destination>
	And I fill in the text field "on_error" with <on_error>
	And I fill in the text field "on_logout" with <on_logout>
	When I submit the form "sso_form"
	Then I should see the text <text>
	And I should see the div <div>
	
	Examples:
    | email                                 | destination   | on_error                 | on_logout | text                    | div                     |
    | "SBOURdEaU+Hg@QAMAIL1.rollsTream.coM" | "/workspaces" | ""                       | ""        | "You are not permitted" | "Permission Error"      |
    | "SBOURdEaU+Hg@QAMAIL1.rollsTream.coM" | "/admin"      | "http://www.google.com"  | ""        | "You are not allowed"   | "Authorization Failure" |
    | ""                                    | ""            | "http://rudyonrails.com" | ""        | "Rudy.rhetoric"         | ""                      |
  

  Scenario Outline: Access the various pages as a non-existing user
    Given I set the main sso fields
    And I fill in the text field "email" with <email>
    And I fill in the text field "first_name" with <first_name>
    And I fill in the text field "last_name" with <last_name>
    And I fill in the text field "destination" with <destination>
    And I fill in the text field "company_id" with <company_id>
	And I fill in the text field "on_error" with <on_error>
    And I fill in the text field "on_logout" with <on_logout>
    When I submit the form "sso_form"
	Then I should see the text <text>
    And I should see the div <div>
    And I click the "Logout" link

	Examples:
    | email                         | first_name | last_name | company_id   | destination        | on_error | on_logout | text                                                    | div                |  |
    | "sherman.douglas@example.org" | "Sherman"  | "Douglas" | "taylormade" | ""                 | ""       | ""        | "Home » Dashboard"                                      | "AUTO"             |  |
    | "sherman.douglas@example.org" | "Sherman"  | "Douglas" | "taylormade" | "/my_profile"      | ""       | ""        | "Home » Dashboard"                                      | "EDIT PROFILE"     |  |
    | "sgreen+jj@example.org"       | "Seth"     | "Green"   | "callaway"   | ""                 | ""       | ""        | "Home » Dashboard"                                      | "AUTO"             |  |

  Scenario Outline: Access the various pages as a non-existing user, exception cases
    Given I set the main sso fields
	And I fill in the text field "email" with <email>
	And I fill in the text field "first_name" with <first_name>
	And I fill in the text field "last_name" with <last_name>
	And I fill in the text field "destination" with <destination>
	And I fill in the text field "company_id" with <company_id>
	And I fill in the text field "on_error" with <on_error>
	And I fill in the text field "on_logout" with <on_logout>
	When I submit the form "sso_form"
	Then I should see the text <text>
	And I should see the div <div>

    Examples:
    | email                         | first_name | last_name | destination | company_id | on_error                 | on_logout | text                    | div |  |
    | "david.pague+jj@example.info" | "David"    | "Pogue"   | ""          | ""         | "http://rudyonrails.com" | ""        | ""                      | ""  |  |
    | ""                            | ""         | ""        | ""          | ""         | ""                       | ""        | "Invalid login request" | ""  |  |
    | "afasdf3aewr"                 | ""         | ""        | ""          | ""         | ""                       | ""        | "Invalid login request" | ""  |  |
    | "afasdf3aewr"                 | "Seth"     | ""        | ""          | ""         | ""                       | ""        | "Invalid login request" | ""  |  |
    | "afasdf3aewr"                 | "Seth"     | "Green"   | ""          | ""         | ""                       | ""        | "Invalid login request" | ""  |  |
    | "afasdf3aewr"                 | "Seth"     | "Green"   | ""          | "junkco"   | ""                       | ""        | "Invalid login request" | ""  |  |
    | "afasdf3aewr"                 | "Seth"     | "Green"   | "/people"   | "callaway" | ""                       | ""        | "Invalid login request" | ""  |  |
    
	

	
	
    
    
    
    
    

      
    

      
    
