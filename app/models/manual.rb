class Manual < ActiveRecord::Base
  belongs_to :tag
  validates_presence_of :tag_id, :iteration_id, :scenario
  validates_numericality_of :jira, :allow_nil => true
  # validates_numericality_of :bug, :allow_nil => true
  validates_numericality_of :count, :allow_nil => true
  
  
  named_scope :fail, :conditions => {:status => [false, nil]}
  named_scope :pass, :conditions => {:status => true}
  named_scope :blocked, :conditions => {:blocked => true}
  
  named_scope :green_scenarios, :conditions => {:status => true } do
    def reset
      each { |x| x .update_attribute(:status, false) }
    end
  end
end
