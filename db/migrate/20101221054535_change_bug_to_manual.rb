class ChangeBugToManual < ActiveRecord::Migration
  def self.up
    change_column :manuals, :bug, :integer
  end

  def self.down
    remove_column :manuals, :bug
  end
end
