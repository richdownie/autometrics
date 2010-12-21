class ChangeBugToManual < ActiveRecord::Migration
  def self.up
    change_column :manuals, :bug, :integer
  end

  def self.down
  end
end
