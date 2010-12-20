class AddInternetExplorer < ActiveRecord::Migration
  def self.up
    add_column :manuals, :internet_explorer, :boolean
  end

  def self.down
    remove_column :manuals, :internet_explorer
  end
end
