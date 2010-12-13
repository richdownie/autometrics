class Manual < ActiveRecord::Base
  named_scope :fail, :conditions => {:status => [false, nil]}
  named_scope :pass, :conditions => {:status => true}
end
