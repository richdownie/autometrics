# RESET PASSWORD >> Account.find_by_email("sample@example.org").update_password!("safe4now")
Given /I login as a Community Administrator/ do
  if @community_url == "http://localhost:3000/" then
    @browser.goto("http://localhost:3000/hacks?email=sample@example.org")
  else
    @browser.goto(@account_service_url)
    @browser.text_field(:id, 'login').set("rdownie@qamail1.rollstream.com")
    @browser.text_field(:id, 'password').set("testing1")
    @browser.form(:id, 'login_form').submit
    @browser.link(:text, /auto/i).click unless @browser.link(:text, /auto/i).exists? == false
  end
end

Given /I login as a Workspace Administrator/ do
  # @browser.goto("https://qaauto.rollstream.com/hacks?email=rdownie+24@qamail1.rollstream.com")
  @browser.goto(@account_service_url)
  @browser.text_field(:id, 'login').set("rdownie+wa@qamail1.rollstream.com")
  @browser.text_field(:id, 'password').set("testing1")
  @browser.form(:id, 'login_form').submit
  @browser.link(:text, /auto/i).click unless @browser.link(:text, /auto/i).exists? == false
end

Given /I login as a Hub Project Administrator/ do
  # @browser.goto("https://qaauto.rollstream.com/hacks?email=rdownie+21@qamail1.rollstream.com")  #is also an employee by default
  @browser.goto(@account_service_url)
  @browser.text_field(:id, 'login').set("rdownie+pa@qamail1.rollstream.com")
  @browser.text_field(:id, 'password').set("testing1")
  @browser.form(:id, 'login_form').submit
  @browser.link(:text, /auto/i).click unless @browser.link(:text, /auto/i).exists? == false
end

Given /I login as a Spoke Company Administrator/ do   #is also an contact by default
  # @browser.goto("https://qaauto.rollstream.com/hacks?email=rdownie+22@qamail1.rollstream.com")
  @browser.goto(@account_service_url)
  @browser.text_field(:id, 'login').set("rdownie+ca@qamail1.rollstream.com")
  @browser.text_field(:id, 'password').set("testing1")
  @browser.form(:id, 'login_form').submit
  @browser.link(:text, /auto/i).click unless @browser.link(:text, /auto/i).exists? == false
end

Given /I login as an Employee/ do
  # @browser.goto("https://qaauto.rollstream.com/hacks?email=rdownie+23@qamail1.rollstream.com")
  @browser.goto(@account_service_url)
  @browser.text_field(:id, 'login').set("rdownie+employee@qamail1.rollstream.com")
  @browser.text_field(:id, 'password').set("testing1")
  @browser.form(:id, 'login_form').submit
  @browser.link(:text, /auto/i).click unless @browser.link(:text, /auto/i).exists? == false
end

Given /I login as a Spoke Contact/ do
  # @browser.goto("https://qaauto.rollstream.com/hacks?email=rdownie+24@qamail1.rollstream.com")
  @browser.goto(@account_service_url)
  @browser.text_field(:id, 'login').set("rdownie+sc@qamail1.rollstream.com")
  @browser.text_field(:id, 'password').set("testing1")
  @browser.form(:id, 'login_form').submit
  @browser.link(:text, /auto/i).click unless @browser.link(:text, /auto/i).exists? == false
end

Given /I login as a Jack Abbott/ do
  # @browser.goto("https://qaauto.rollstream.com/hacks?email=rdownie+24@qamail1.rollstream.com")
  @browser.goto(@account_service_url)
  @browser.text_field(:id, 'login').set("rdownie+jabbott@qamail1.rollstream.com")
  @browser.text_field(:id, 'password').set("testing1")
  @browser.form(:id, 'login_form').submit
  @browser.link(:text, /auto/i).click unless @browser.link(:text, /auto/i).exists? == false
end

Given /I login with "(.*)"/ do |email|
  @browser.goto(@account_service_url)
  @browser.text_field(:id, 'login').set(email)
  @browser.text_field(:id, 'password').set("testing1")
  @browser.form(:id, 'login_form').submit
  @browser.link(:text, /auto/i).click unless @browser.link(:text, /auto/i).exists? == false
end
  
Given /I am not logged in/ do
  @browser.goto(@account_service_url)
end

Given /^I verified that I am logged in$/ do
  if @browser.button(:value, "Log in").exists?
     @browser.text_field(:name, "login").set("rdownie")
     @browser.text_field(:name, "password").set("testing1")
     @browser.button(:value, "Log in").click
  end
end

Given /^I close the browser$/ do
  @browser.close
end