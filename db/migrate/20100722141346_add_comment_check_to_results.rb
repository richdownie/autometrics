class AddCommentCheckToResults < ActiveRecord::Migration
  def self.up
    add_column :results, :comment, :string
    add_column :results, :check, :boolean
  end

  def self.down
    remove_column :results, :check
    remove_column :results, :comment
  end
end
