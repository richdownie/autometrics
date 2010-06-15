@set3 @production @issues
Feature: Who has access to Issue Management Link under Applications

Scenario: Setting up for below scenarios:
  Given I login as a Community Administrator
  And I am on the edit shipping issue type page
  And I select "ISSUE Creator" from "issue_type_creator_business_role_id"
  And I select "ISSUE Mediator" from "issue_type_mediator_business_role_id"
  And I select "ISSUE Manager" from "issue_type_manager_business_role_id"
  And I select "ISSUE Participant" from "issue_type_participant_business_role_id"
  And I click the "Save" button
  Then I click the "Logout" link
  
Scenario Outline: These users see the Issue Management link and tab
  Given I login with <email>
  And I click the "Issue Management" div
  Then I click the "MANAGE ISSUES" div
  Then I click the "Logout" link

  Examples:
    | email                                         |
    | "rdownie+jcreator@qamail1.rollstream.com"     |
    | "rdownie+jmediator@qamail1.rollstream.com"    |
    | "rdownie+jparticipant@qamail1.rollstream.com" |
    | "rdownie+jmanager@qamail1.rollstream.com"     |
    
Scenario Outline: These users will not see Issue Management link
  Given I login with <email>
  And I wait for "3" seconds
  Then I should NOT see the text "Issue Management"
  Then I click the "Logout" link

  Examples:
    | email                                     |
    | "rdownie+sc@qamail1.rollstream.com"       |
    | "rdownie+pa@qamail1.rollstream.com"       |
    | "rdownie+ca@qamail1.rollstream.com"       |
    | "rdownie+employee@qamail1.rollstream.com" |
    
Scenario Outline: Testing /issues_dasboard security access
  Given I login with <email>
  And I am on the issues dashboard page
  And I wait for "3" seconds
  Then I should see the div <div>

  Examples:
    | email                                         | div                 |
    | "rdownie+jcreator@qamail1.rollstream.com"     | "Permission Error"  |
    | "rdownie+jmediator@qamail1.rollstream.com"    | "Permission Error"  |
    | "rdownie+jparticipant@qamail1.rollstream.com" | "Permission Error"  |
    | "rdownie+sc@qamail1.rollstream.com"           | "Permission Error"  |
    | "rdownie+pa@qamail1.rollstream.com"           | "Permission Error"  |
    | "rdownie+ca@qamail1.rollstream.com"           | "Permission Error"  |
    | "rdownie+employee@qamail1.rollstream.com"     | "Permission Error"  |
    | "rdownie+jmanager@qamail1.rollstream.com"     | "Dashboard"         |
    | "rdownie@qamail1.rollstream.com"              | "Dashboard"         |