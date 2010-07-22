class AddCommentCheckToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :comment, :string
    add_column :results, :check, :boolean, :default => false, :nil => false
  end

  def self.down
    remove_column :results, :check
    remove_column :results, :comment
  end
end
