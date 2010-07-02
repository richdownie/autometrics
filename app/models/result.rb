class Result < ActiveRecord::Base
  
  named_scope :item_feature, :conditions => ['title LIKE ?', '%item.feature%']
end
