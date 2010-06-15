Given /The Issues Save Search Name gets saved with "(.*)"/ do |what|
  @browser.div(:id, 'default_dialog').text_field(:index, "1").set(what)
end

Given /The Line Item Save Search Name gets saved with "(.*)"/ do |what|
  @browser.div(:id, 'default_dialog').text_field(:index, "1").set(what)
end
Given /I click the Edit Link Text Column for Line Items/ do
  @browser.table(:id, 'line_item_form_columns').link(:text, 'Edit').click
end

Given /I click the Drop-List Column under Columns for Line Items/ do
  @browser.ul(:id, 'line_item_links').link(:text, 'Drop-List Column').click
end

Given /I click the Number Column under Columns for Line Items/ do
  @browser.ul(:id, 'line_item_links').link(:text, 'Number Column').click
end

Given /I click the "(.*)" under "(.*)"/ do |link, where|
  @browser.ul(:id, where).link(:text, link).click
end

Given /^I set checkbox "(.*)" in the search results$/ do |index|
  @browser.div(:class, "issues-content").checkbox(:index, index).click
end