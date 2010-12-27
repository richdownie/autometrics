class AddUntestedToManual < ActiveRecord::Migration
  def self.up
    add_column :manuals, :untested, :boolean, :default => true
  end

  def self.down
    remove_column :manuals, :unteseted
  end
end
