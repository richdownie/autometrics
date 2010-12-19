class Tag < ActiveRecord::Base
  has_many :manuals
  validates_presence_of :name
end

