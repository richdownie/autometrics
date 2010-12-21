class AddTestCountToManual < ActiveRecord::Migration
  def self.up
    add_column :manuals, :count, :integer
  end

  def self.down
    remove_column :manuals, :count
  end
end
