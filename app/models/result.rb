class Result < ActiveRecord::Base
  
  named_scope :item_feature, :conditions => ['title LIKE ?', '%item.feature%']
  named_scope :activities_feature, :conditions => ['title LIKE ?', '%activities.feature%']
  
  
  
  named_scope :issue_bulk_delete_feature, :conditions => ['title LIKE ?', '%issue_bulk_delete.feature%']
  named_scope :issue_aging_feature, :conditions => ['title LIKE ?', '%issue_aging.feature%']
  named_scope :issue_admin_feature, :conditions => ['title LIKE ?', '%issue_admin.feature%']
  named_scope :issue_search_feature, :conditions => ['title LIKE ?', '%issue_search.feature%']
end
