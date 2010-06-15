@deploy
Feature: Deploy Code

Scenario: auto
  Given I am on the qaadmin page
  And I verified that I am logged in
  Then I click the "Deploy" link
  Then I wait for "120" seconds
  Then I close the browser