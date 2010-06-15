@set2 @production @workspaces
Feature: Workspace member scenarios

  Background: Setup Workspaces and go to index page
    Given I login as a Workspace Administrator
    And I reset the Workspaces data
    And I am on the workspaces page

  Scenario Outline: Quick add a workspace member
    Given I click the "View" div
    And I click the "Add Member" link
    And I fill in the text field "email" with <contact email>
    When I click the "Add Member" button
    And I wait for "1" second
    Then I should see the text <contact name>

    Examples: 
      | contact email                       | contact name      |
      | "rdownie+sc@qamail1.rollstream.com" | "Contact, Spoke"  |
      | "wendell.alexis@example.org"        | "Alexis, Wendell" |
      | "mhuff@nothere.org"                 | "was an error"    |

   Scenario Outline: Add a workspace member from the Add/Manage Members page
     Given I click the "View" div
     And I click the "View/Manage Members" link
     And I fill in the text field "terms_quick_search" with <search string>
     And I click the "search" button
     And I wait for "2" seconds
     When I click the <checkbox id> checkbox
     And I select <role name> from "role"
     And I click the "add" button
     And I wait for "2" seconds
     Then I should see the text <text>

     Examples:
       | search string | checkbox id           | role name                 | text                           |
       | "bour"        | "community_people_24" | "Editor"                  | "2 members found in workspace" |
       | "bour"        | "community_people_40" | "Observer"                | "2 members found in workspace" |
       | "down"        | "community_people_40" | "Workspace Administrator" | "2 members found in workspace" |
