class AddStepsToManual < ActiveRecord::Migration
  def self.up
    add_column :manuals, :steps, :text
  end

  def self.down
    remove_column :manuals, :steps
  end
end
