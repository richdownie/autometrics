class Result < ActiveRecord::Base
  
  named_scope :item_feature, :conditions => ['title LIKE ?', '%item.feature%']
  named_scope :activities_feature, :conditions => ['title LIKE ?', '%activities.feature%']
  
  
  
  named_scope :issue_admin_feature, :conditions => ['title LIKE ?', '%issue_admin.feature%']
  named_scope :issue_aging_feature, :conditions => ['title LIKE ?', '%issue_aging.feature%']
  named_scope :issue_bulk_delete_feature, :conditions => ['title LIKE ?', '%issue_bulk_delete.feature%']
  named_scope :issue_bulk_delete_by_creator_feature, :conditions => ['title LIKE ?', '%issue_bulk_delete_by_creator.feature%']
  named_scope :issue_custom_fields_feature, :conditions => ['title LIKE ?', '%issue_custom_fields.feature%']
  named_scope :issue_dashboard_feature, :conditions => ['title LIKE ?', '%issue_dashboard.feature%']
  named_scope :issue_email_feature, :conditions => ['title LIKE ?', '%issue_email.feature%']
  named_scope :issue_import_feature, :conditions => ['title LIKE ?', '%issue_import.feature%']
  named_scope :issue_line_item_searchability_feature, :conditions => ['title LIKE ?', '%issue_line_item_searchability.feature%']
  named_scope :issue_o_and_m_import_feature, :conditions => ['title LIKE ?', '%issue_o_and_m_import.feature%']
  named_scope :issue_override_email_feature, :conditions => ['title LIKE ?', '%issue_override_email.feature%']
  
  
  named_scope :issue_search_feature, :conditions => ['title LIKE ?', '%issue_search.feature%']
end
