class Iteration < ActiveRecord::Base
  validates_presence_of :title
  named_scope :defaults, :conditions => {:default => true } do
    def reset
      each { |x| x .update_attribute(:default, false) }
    end
  end
end
