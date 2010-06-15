@metrics
Feature: AutoMetrics

Scenario: Test Run
  Given I login as a Community Administrator
  And I am on the projects page
  And I test out autometrics
  Then I dump some data
  