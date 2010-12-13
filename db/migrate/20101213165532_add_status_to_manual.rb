class AddStatusToManual < ActiveRecord::Migration
  def self.up
    add_column :manuals, :status, :boolean
  end

  def self.down
    remove_column :manuals, :status
  end
end
