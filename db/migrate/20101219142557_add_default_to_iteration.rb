class AddDefaultToIteration < ActiveRecord::Migration
  def self.up
    add_column :iterations, :default, :boolean
  end

  def self.down
    remove_column :iterations, :default
  end
end
