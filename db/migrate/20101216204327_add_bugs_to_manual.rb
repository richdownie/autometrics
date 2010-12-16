class AddBugsToManual < ActiveRecord::Migration
  def self.up
    add_column :manuals, :bug, :string
  end

  def self.down
    remove_column :manuals, :bug
  end
end
