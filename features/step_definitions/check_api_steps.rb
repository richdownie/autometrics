require 'rest_client'

Given /^On server "([^\"]*)"$/ do | server |
  @base_url = server
end

Given /^As user "(.+)" with password "([^\"]*)"$/ do | user , password |
  @params = { :user => user,:password => password }
end

Given /^I Want to search "([^\"]*)"  file "([^\"]*)"$/ do | resource , file_name |
    #private_resource = RestClient::Resource.new("#{@base_url}/#{resource.pluralize}/search.xml?apiKey=Covidien", @params)
    private_resource = RestClient::Resource.new("#{@base_url}/contacts/search.xml?apiKey=Covidien", @params)
    @response =  private_resource.post File.read("#{Rails.root}/features/files/#{file_name}.xml"), :content_type => 'application/xml'
    @status_code = @response.code
=begin
    @error_response = $!
    @status_code = @error_response.http_code
=end
end

Given /^I Want to update "([^\"]*)"  with "([^\"]*)" file "([^\"]*)"$/ do | resource , id , file_name |
  begin
    private_resource = RestClient::Resource.new("#{@base_url}/#{resource}/#{id}.xml?apiKey=Covidien", @params)
    @response =  private_resource.put File.read("#{Rails.root}/features/files/#{file_name}.xml"), :content_type => 'application/xml'
    @status_code = @response.code
  rescue
    @error_response = $!
    @status_code = @error_response.http_code
  end
end


Given /^I Want to get "([^\"]*)"  with id "([^\"]*)"$/ do | resource, id |
  begin
    private_resource = RestClient::Resource.new("#{@base_url}/#{resource}/#{id}.xml?apiKey=Covidien", @params)
    @response = private_resource.get
    @status_code = @response.code
  rescue
    @error_response = $!
    @status_code = @error_response.http_code
  end
end

Given /^I Want to  create "([^\"]*)"   using "([^\"]*)"$/ do | resource, file_name |
  begin
    private_resource = RestClient::Resource.new("#{@base_url}/#{resource.pluralize}.xml?apiKey=Covidien", @params)
    @response =  private_resource.post File.read("#{Rails.root}/features/files/#{file_name}.xml"), :content_type => 'application/xml'
    @id = Hpricot.XML(@response).search("ID").first.inner_html
    @status_code = @response.code
  rescue
    @error_response = $!
    @status_code = @error_response.http_code
  end
end

Given /^I Want to  delete "([^\"]*)"$/ do | resource |
  begin
    private_resource = RestClient::Resource.new("#{@base_url}/#{resource}/#{@id}.xml?apiKey=Covidien", @params)
    @response = private_resource.delete
    @status_code = @response.code
  rescue
    @error_response = $!
    @status_code = @error_response.http_code
  end
end

Then /^It should respond with "([^\"]*)"$/ do |status_code|
  assert @status_code == status_code.to_i
end
