class AddTagToManual < ActiveRecord::Migration
  def self.up
    add_column :manuals, :tag, :string
  end

  def self.down
    remove_column :manuals, :tag
  end
end
