class FailuresController < ApplicationController
before_filter :authorize, :only => [:index]
  def index
    @activities_feature = Result.activities_feature.count
  
    @issue_admin_feature = Result.issue_admin_feature.count
    @issue_aging_feature = Result.issue_aging_feature.count
    @issue_bulk_delete_feature = Result.issue_bulk_delete_feature.count
    @issue_bulk_delete_by_creator_feature = Result.issue_bulk_delete_by_creator_feature.count
    @issue_custom_fields_feature = Result.issue_custom_fields_feature.count
    @issue_dashboard_feature = Result.issue_dashboard_feature.count
    @issue_email_feature = Result.issue_email_feature.count
    @issue_import_feature = Result.issue_import_feature.count
    @issue_line_item_searchability_feature = Result.issue_line_item_searchability_feature.count
    @issue_o_and_m_import_feature = Result.issue_o_and_m_import_feature.count
    @issue_override_email_feature = Result.issue_override_email_feature.count
    @issue_save_search_feature = Result.issue_save_search_feature.count
    @issue_search_feature = Result.issue_search_feature.count
    @issue_search_on_failed_emails_feature = Result.issue_search_on_failed_emails_feature.count
    @issue_simple_search_feature = Result.issue_simple_search_feature.count
    @issue_sort_feature = Result.issue_sort_feature.count
    @issue_type_security_feature = Result.issue_type_security_feature.count
    @issues_feature = Result.issues_feature.count
    @issues_and_file_uploads_feature = Result.issues_and_file_uploads_feature.count
    @issues_bulk_change_status_feature = Result.issues_bulk_change_status_feature.count
    @issues_bulk_emailing_feature = Result.issues_bulk_emailing_feature.count
    @issues_delete_feature = Result.issues_delete_feature.count
    @issues_manage_tab_feature = Result.issues_manage_tab_feature.count
    @item_feature = Result.item_feature.count
    @line_item_bulk_edits_feature = Result.line_item_bulk_edits_feature.count
    @line_item_bulk_updates_random_feature = Result.line_item_bulk_updates_random_feature.count
    @line_item_bulk_updates_to_closed_feature = Result.line_item_bulk_updates_to_closed_feature.count
    @line_item_bulk_updates_to_pending_feature = Result.line_item_bulk_updates_to_pending_feature.count
    @line_item_bulk_updates_to_resolved_feature = Result.line_item_bulk_updates_to_resolved_feature.count
    @line_item_search_feature = Result.line_item_search_feature.count
    @line_items_feature = Result.line_items_feature.count
    
  end

end
