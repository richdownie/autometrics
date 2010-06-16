Feature: Test

Scenario: Verify Failed Scenarios get dropped in this heroku app
  Given I test out autometrics
  Then I should see the text "fail"