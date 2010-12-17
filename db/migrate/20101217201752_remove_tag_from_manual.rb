class RemoveTagFromManual < ActiveRecord::Migration
  def self.up
    remove_column :manuals, :tag
  end

  def self.down
  end
end
