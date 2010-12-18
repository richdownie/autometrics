class AddIterationIdToManual < ActiveRecord::Migration
  def self.up
    add_column :manuals, :iteration_id, :integer
  end

  def self.down
    remove_column :manuals, :iteration_id
  end
end
