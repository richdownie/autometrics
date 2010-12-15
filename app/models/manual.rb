class Manual < ActiveRecord::Base
  TAGS = ['Issues', 'LineItems', 'CustomFields']
  
  named_scope :fail, :conditions => {:status => [false, nil]}
  named_scope :pass, :conditions => {:status => true}
  
  named_scope :green_scenarios, :conditions => {:status => true } do
    def reset
      each { |x| x .update_attribute(:status, false) }
    end
  end
end
