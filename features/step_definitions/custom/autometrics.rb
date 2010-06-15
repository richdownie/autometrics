Then /^I test out autometrics$/ do
  @browser.goto(@autometrics)
end

Then /^I dump some data$/ do
  $push = "You"
  @browser.goto(@autometrics + "/home/dump")
end