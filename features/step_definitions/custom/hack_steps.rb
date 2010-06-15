Given /I reset the Items data/i do
@browser.goto(@community_url + "hacks/reset_items")
end
  
Given /I reset the Issues data/ do
  @browser.goto(@community_url + "hacks/reset_issues")
end

Given /I reset the SSO users data/ do
  @browser.goto(@community_url + "hacks/reset_sso_users")
end

Given /I reset the Workspaces data/ do
  @browser.goto(@community_url + "hacks/reset_workspaces")
end

Given /I disable issue resolution for the Community/ do
  @browser.goto(@community_url + "hacks/disable_issues")
end

Given /I remove all existing Answers/ do
  @browser.goto(@community_url + "hacks/remove_answers")
end

Given /I remove all existing Onboard Requests/ do
  @browser.goto(@community_url + "hacks/remove_onboarding_requests") 
end

Given /I close the anonymous user session/ do
  @browser.goto(@community_url + "anonymous_user_logout")  
end

Given /I switch onboarding role to Approver/ do
  @browser.goto(@community_url + "hacks/swtich_to_approve")  
end

Given /I only allow Pre-Approvers to Edit Company Info/ do
  @browser.goto(@community_url + "hacks/onboarding_permissions_for_pre_approver_only")  
end

Given /I reset projects and activities/ do
  @browser.goto(@community_url + "hacks/reset_projects")  
end

Given /I add a "(.*)" activity to an existing project/ do |type|
  case type
    when /Send a Message/i
      @browser.goto(@community_url + "hacks/activity_send_message")
    when /Send a Profile Update Reminder/i
      @browser.goto(@community_url + "hacks/activity_send_reminder")
    when /Complete a Web Form/i
      @browser.goto(@community_url + "hacks/activity_complete_web_form")
  end    
end

Given /I start the activity/ do
  @browser.goto(@community_url + "hacks/set_activity_to_in_progress")
end

Given /I add a Participant to the Activity/ do
  @browser.goto(@community_url + "hacks/add_participant_to_activity")
end

Given /^I wait for "([^\"]*)" seconds$/ do |seconds|
  sleep seconds.to_i
end

Given /^I refresh the page$/ do
  @browser.refresh
end