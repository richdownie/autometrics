class AddTagIdToManual < ActiveRecord::Migration
  def self.up
    add_column :manuals, :tag_id, :integer
  end

  def self.down
    remove_column :manuals, :tag_id
  end
end
