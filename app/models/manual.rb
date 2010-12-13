class Manual < ActiveRecord::Base
  named_scope :pass, :conditions => { :status => true }
  named_scope :fail, :conditions => { :status => false }
end
