class FailuresController < ApplicationController
before_filter :authorize, :only => [:index]

  def index
    start_date = params[:date].blank? ? 1.week.ago : params[:date]
    @last_date_picked = start_date
    
    @total_failures = Result.not_false_positives.since(start_date).count
    @activities_feature = Result.not_false_positives.activities_feature.since(start_date).count
    @admin_feature = Result.not_false_positives.admin_feature.since(start_date).count
    @company_alerts_feature = Result.not_false_positives.company_alerts_feature.since(start_date).count
    @company_address_feature = Result.not_false_positives.company_address_feature.since(start_date).count
    @company_permissions_for_custom_fields_feature = Result.not_false_positives.company_permissions_for_custom_fields_feature.since(start_date).count
    @company_registration_permissions_feature = Result.not_false_positives.company_registration_permissions_feature.since(start_date).count
    @contact_alerts_feature = Result.not_false_positives.contact_alerts_feature.since(start_date).count
    @company_registration_permissions_feature = Result.not_false_positives.company_registration_permissions_feature.since(start_date).count
    @contact_permissions_for_custom_fields_feature = Result.not_false_positives.contact_permissions_for_custom_fields_feature.since(start_date).count
    @dashboard_feature = Result.not_false_positives.dashboard_feature.since(start_date).count
    @imports_feature = Result.not_false_positives.imports_feature.since(start_date).count
    @issue_admin_feature = Result.not_false_positives.issue_admin_feature.since(start_date).count
    @issue_aging_feature = Result.not_false_positives.issue_aging_feature.since(start_date).count
    @issue_bulk_delete_feature = Result.not_false_positives.issue_bulk_delete_feature.since(start_date).count
    @issue_bulk_delete_by_creator_feature = Result.not_false_positives.issue_bulk_delete_by_creator_feature.since(start_date).count
    @issue_custom_fields_feature = Result.not_false_positives.issue_custom_fields_feature.since(start_date).count
    @issue_dashboard_feature = Result.not_false_positives.issue_dashboard_feature.since(start_date).count
    @issue_email_feature = Result.not_false_positives.issue_email_feature.since(start_date).count
    @issue_import_feature = Result.not_false_positives.issue_import_feature.since(start_date).count
    @issue_line_item_searchability_feature = Result.not_false_positives.issue_line_item_searchability_feature.since(start_date).count
    @issue_new_feature = Result.not_false_positives.issue_new_feature.since(start_date).count
    @issue_o_and_m_import_feature = Result.not_false_positives.issue_o_and_m_import_feature.since(start_date).count
    @issue_override_email_feature = Result.not_false_positives.issue_override_email_feature.since(start_date).count
    @issue_save_search_feature = Result.not_false_positives.issue_save_search_feature.since(start_date).count
    @issue_search_feature = Result.not_false_positives.issue_search_feature.since(start_date).count
    @issue_search_on_failed_emails_feature = Result.not_false_positives.issue_search_on_failed_emails_feature.since(start_date).count
    @issue_simple_search_feature = Result.not_false_positives.issue_simple_search_feature.since(start_date).count
    @issue_sort_feature = Result.not_false_positives.issue_sort_feature.since(start_date).count
    @issue_type_security_feature = Result.not_false_positives.issue_type_security_feature.since(start_date).count
    @issues_feature = Result.not_false_positives.issues_feature.since(start_date).count
    @issues_and_file_uploads_feature = Result.not_false_positives.issues_and_file_uploads_feature.since(start_date).count
    @issues_bulk_change_status_feature = Result.not_false_positives.issues_bulk_change_status_feature.since(start_date).count
    @issues_bulk_emailing_feature = Result.not_false_positives.issues_bulk_emailing_feature.since(start_date).count
    @issues_delete_feature = Result.not_false_positives.issues_delete_feature.since(start_date).count
    @issues_manage_tab_feature = Result.not_false_positives.issues_manage_tab_feature.since(start_date).count
    @item_feature = Result.not_false_positives.item_feature.since(start_date).count
    @line_item_bulk_edits_feature = Result.not_false_positives.line_item_bulk_edits_feature.since(start_date).count
    @line_item_bulk_updates_random_feature = Result.not_false_positives.line_item_bulk_updates_random_feature.since(start_date).count
    @line_item_bulk_updates_to_closed_feature = Result.not_false_positives.line_item_bulk_updates_to_closed_feature.since(start_date).count
    @line_item_bulk_updates_to_pending_feature = Result.not_false_positives.line_item_bulk_updates_to_pending_feature.since(start_date).count
    @line_item_bulk_updates_to_resolved_feature = Result.not_false_positives.line_item_bulk_updates_to_resolved_feature.since(start_date).count
    @line_item_search_feature = Result.not_false_positives.line_item_search_feature.since(start_date).count
    @line_items_feature = Result.not_false_positives.line_items_feature.since(start_date).count
    @login_feature = Result.not_false_positives.login_feature.since(start_date).count
    @projects_feature = Result.not_false_positives.projects_feature.since(start_date).count
    @registration_permissions_feature = Result.not_false_positives.registration_permissions_feature.since(start_date).count
    @security_issue_type_feature = Result.not_false_positives.security_issue_type_feature.since(start_date).count
    @single_sign_on_feature = Result.not_false_positives.single_sign_on_feature.since(start_date).count
    @stable_profile_links_feature = Result.not_false_positives.stable_profile_links_feature.since(start_date).count
    @terms_of_service_feature = Result.not_false_positives.terms_of_service_feature.since(start_date).count
    @workspace_feature = Result.not_false_positives.workspace_feature.since(start_date).count
    @ws_conversations_feature = Result.not_false_positives.ws_conversations_feature.since(start_date).count
    @ws_crud_feature = Result.not_false_positives.ws_crud_feature.since(start_date).count
    @ws_events_feature = Result.not_false_positives.ws_events_feature.since(start_date).count
    @ws_files_and_folders_feature = Result.not_false_positives.ws_files_and_folders_feature.since(start_date).count
    @ws_members_feature = Result.not_false_positives.ws_members_feature.since(start_date).count
    @ws_settings_feature = Result.not_false_positives.ws_settings_feature.since(start_date).count
    
  end

end
