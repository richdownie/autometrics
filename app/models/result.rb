class Result < ActiveRecord::Base
  
  named_scope :activities_feature, :conditions => ['title LIKE ?', '%activities.feature%']
  named_scope :admin_feature, :conditions => ['title LIKE ?', '%admin.feature%']
  named_scope :company_alerts_feature, :conditions => ['title LIKE ?', '%company_alerts.feature%']
  named_scope :company_address_feature, :conditions => ['title LIKE ?', '%company_address.feature%']
  named_scope :company_permissions_for_custom_fields_feature, :conditions => ['title LIKE ?', '%company_permissions_for_custom_fields.feature%']
  named_scope :company_registration_permissions_feature, :conditions => ['title LIKE ?', '%company_registration_permissions.feature%']
  named_scope :contact_alerts_feature, :conditions => ['title LIKE ?', '%contact_alerts.feature%']
  named_scope :contact_permissions_for_custom_fields_feature, :conditions => ['title LIKE ?', '%contact_permissions_for_custom_fields.feature%']
   named_scope :dashboard_feature, :conditions => ['title LIKE ?', '%dashboard.feature%']
  named_scope :imports_feature, :conditions => ['title LIKE ?', '%imports.feature%']
  named_scope :issue_admin_feature, :conditions => ['title LIKE ?', '%issue_admin.feature%']
  named_scope :issue_aging_feature, :conditions => ['title LIKE ?', '%issue_aging.feature%']
  named_scope :issue_bulk_delete_feature, :conditions => ['title LIKE ?', '%issue_bulk_delete.feature%']
  named_scope :issue_bulk_delete_by_creator_feature, :conditions => ['title LIKE ?', '%issue_bulk_delete_by_creator.feature%']
  named_scope :issue_custom_fields_feature, :conditions => ['title LIKE ?', '%issue_custom_fields.feature%']
  named_scope :issue_dashboard_feature, :conditions => ['title LIKE ?', '%issue_dashboard.feature%']
  named_scope :issue_email_feature, :conditions => ['title LIKE ?', '%issue_email.feature%']
  named_scope :issue_import_feature, :conditions => ['title LIKE ?', '%issue_import.feature%']
  named_scope :issue_line_item_searchability_feature, :conditions => ['title LIKE ?', '%issue_line_item_searchability.feature%']
  named_scope :issue_new_feature, :conditions => ['title LIKE ?', '%issue_new.feature%']
  named_scope :issue_o_and_m_import_feature, :conditions => ['title LIKE ?', '%issue_o_and_m_import.feature%']
  named_scope :issue_override_email_feature, :conditions => ['title LIKE ?', '%issue_override_email.feature%']
  named_scope :issue_save_search_feature, :conditions => ['title LIKE ?', '%issue_save_search.feature%']
  named_scope :issue_search_feature, :conditions => ['title LIKE ?', '%issue_search.feature%']
  named_scope :issue_search_on_failed_emails_feature, :conditions => ['title LIKE ?', '%issue_search_on_failed_emails.feature%']
  named_scope :issue_simple_search_feature, :conditions => ['title LIKE ?', '%issue_simple_search.feature%']
  named_scope :issue_sort_feature, :conditions => ['title LIKE ?', '%issue_sort.feature%']
  named_scope :issue_type_security_feature, :conditions => ['title LIKE ?', '%issue_type_security.feature%']
  named_scope :issues_feature, :conditions => ['title LIKE ?', '%issues.feature%']
  named_scope :issues_and_file_uploads_feature, :conditions => ['title LIKE ?', '%issues_and_file_uploads.feature%']
  named_scope :issues_bulk_change_status_feature, :conditions => ['title LIKE ?', '%issues_bulk_change_status.feature%']
  named_scope :issues_bulk_emailing_feature, :conditions => ['title LIKE ?', '%issues_bulk_emailing.feature%']
  named_scope :issues_delete_feature, :conditions => ['title LIKE ?', '%issues_delete.feature%']
  named_scope :issues_manage_tab_feature, :conditions => ['title LIKE ?', '%issues_manage_tab.feature%']
  named_scope :item_feature, :conditions => ['title LIKE ?', '%item.feature%']
  named_scope :line_item_bulk_edits_feature, :conditions => ['title LIKE ?', '%line_item_bulk_edits.feature%']
  named_scope :line_item_bulk_updates_random_feature, :conditions => ['title LIKE ?', '%line_item_bulk_updates_random.feature%']
  named_scope :line_item_bulk_updates_to_closed_feature, :conditions => ['title LIKE ?', '%line_item_bulk_updates_to_closed.feature%']
  named_scope :line_item_bulk_updates_to_pending_feature, :conditions => ['title LIKE ?', '%line_item_bulk_updates_to_pending.feature%']
  named_scope :line_item_bulk_updates_to_resolved_feature, :conditions => ['title LIKE ?', '%line_item_bulk_updates_to_resolved.feature%']
  named_scope :line_item_search_feature, :conditions => ['title LIKE ?', '%line_item_search.feature%']
  named_scope :line_items_feature, :conditions => ['title LIKE ?', '%line_items.feature%']
  named_scope :login_feature, :conditions => ['title LIKE ?', '%login.feature%']
  named_scope :projects_feature, :conditions => ['title LIKE ?', '%projects.feature%']
  named_scope :registration_permissions_feature, :conditions => ['title LIKE ?', '%registration_permissions.feature%']
  named_scope :security_issue_type_feature, :conditions => ['title LIKE ?', '%security_issue_type.feature%']
  named_scope :single_sign_on_feature, :conditions => ['title LIKE ?', '%single_sign_on.feature%']
  named_scope :stable_profile_links_feature, :conditions => ['title LIKE ?', '%stable_profile_links.feature%']
  named_scope :terms_of_service_feature, :conditions => ['title LIKE ?', '%terms_of_service.feature%']
  named_scope :workspace_feature, :conditions => ['title LIKE ?', '%workspace.feature%']
  named_scope :ws_conversations_feature, :conditions => ['title LIKE ?', '%ws_conversations.feature%']
  named_scope :ws_crud_feature, :conditions => ['title LIKE ?', '%ws_crud.feature%']
  named_scope :ws_events_feature, :conditions => ['title LIKE ?', '%ws_events.feature%']
  named_scope :ws_files_and_folders_feature, :conditions => ['title LIKE ?', '%ws_files_and_folders.feature%']
  named_scope :ws_members_feature, :conditions => ['title LIKE ?', '%ws_members.feature%']
  named_scope :ws_polls_feature, :conditions => ['title LIKE ?', '%ws_polls.feature%']
  named_scope :ws_settings_feature, :conditions => ['title LIKE ?', '%ws_settings.feature%']
  named_scope :since, lambda { |date| { :conditions => "DATE(created_at) >= '#{date.to_s}'" }}
  
  named_scope :not_false_positives, :conditions => {:check => false}

end
