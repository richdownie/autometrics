class AddStatusToManual < ActiveRecord::Migration
  def self.up
    add_column :manuals, :status, :boolean, :default => false, :nil => false
  end

  def self.down
    remove_column :manuals, :status
  end
end
