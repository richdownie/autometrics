class Manual < ActiveRecord::Base
  named_scope :fail, :conditions => {:status => false}
  named_scope :pass, :conditions => {:status => true}
end
