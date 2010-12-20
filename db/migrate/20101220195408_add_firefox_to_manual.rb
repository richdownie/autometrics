class AddFirefoxToManual < ActiveRecord::Migration
  def self.up
    add_column :manuals, :firefox, :boolean
  end

  def self.down
    remove_column :manuals, :firefox
  end
end
