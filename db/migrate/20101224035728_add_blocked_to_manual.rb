class AddBlockedToManual < ActiveRecord::Migration
  def self.up
    add_column :manuals, :blocked, :boolean, :default => false
  end

  def self.down
    remove_column :manuals, :blocked
  end
end
