class Result < ActiveRecord::Base
  
  named_scope :item_feature, :conditions => ['title LIKE ?', '%item.feature%']
  named_scope :activities_feature, :conditions => ['title LIKE ?', '%activities.feature%']
  named_scope :issue_search_feature, :conditions => ['title LIKE ?', '%issue_search.feature%']
end
