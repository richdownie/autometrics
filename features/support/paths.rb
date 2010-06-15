module Paths
  def path_to(page_name)
  it_id = 24
    case page_name
      
      when /the login page/i
        @account_service_url

      when /the home page/i
        @community_url
        
      when /the admin page/i
        @community_url + "admin"
      
      when /the items page/i
        @community_url + "items"
      
      when /the onboarding admin page/i
        @community_url + "view_onboarding_permissions"

      when /the onboarding requests page/i
        @community_url + "onboarding_requests" 

      when /the change request page/i
          @community_url + @anonymous_reg
        
      when /the default project permissions page/i
        @community_url + "default_project_permissions"
      
      when /the view community permissions page/i
        @community_url + "view_community_permissions"
        
      when /the community settings page/i
        @community_url + "communities"
        
      when /the inbox page/i
        @community_url + "email_messages"
        
      when /the my profile page/i
        @community_url + "my_profile"
        
      when /the edit profile page/i
        @community_url + "my_profile/edit"
        
      when /the projects page/i
        @community_url + "projects"
        
      when /the new projects page/i
        @community_url + "projects/new"
        
      when /the new page/i
        url = @browser.url
        url + "/new"

      when /the contacts page/i
        @community_url + "people"

      when /the issues page/i
        @community_url + "issues"

      when /the new issues page/i
        @community_url + "issues/new"

      when /the shipping issue type page/i
        @community_url + "issue_types/#{it_id}"

      when /the edit shipping issue type page/i
        @community_url + "issue_types/#{it_id}/edit"

      when /the shipping issue line items page/i
        @community_url + "issue_types/#{it_id}/line_items"
        
      when /the issues dashboard page/i
        @community_url + "issue_types/issue_dashboard_index"
          
      when /the contacts custom fields edit page/i
        @community_url + "people/edit_profile_custom_fields"
        
      when /the contacts view custom field group permissions page/i
        @community_url + "community/permissions/1"
        
      when /the companies view custom field group permissions page/i
        @community_url + "community/permissions/3"

      when /the companies page/i
        @community_url + "organizations"
      
      when /my company page/i
        @community_url + "my_company/root/profile"

      when /the my company page/i
        @community_url + "my_company"
        
      when /the company import page/i
        @community_url + "organizations/imports/new"
        
      when /the contact import page/i
        @community_url + "contacts/import"
        
      when /the issue import page/i
        @community_url + "issues/imports/new?issue_type_id=#{it_id}"
        
      when /the registration page/i
        @community_url + "onboarding_dashboard"

      when /the change management page/i
        @community_url + "onboarding_change_request_dashboard"

      when /the workspaces page/i
        @community_url + "workspace_index"

      when /the admin page/i
        @community_url + "admin"
        
      when /the stable new registration page/i
        @community_url + "link/registration/new"
        
      when /the hacks sso page/i
        "https://qawiley.rollstream.com/hacks/sso"
        
      when /the qaadmin page/i
        "https://qaadmin.rollstream.com/communities/166"

      #Test any of your local apps
      when /the localhost page/i
        @environment + "localhost:3000"

      #Test any of your local apps on passenger
      when /the passenger page/i
        @environment + "richdownie1.local/watircuke"

      else
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
end
World(Paths)
