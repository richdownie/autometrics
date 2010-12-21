class AddJiraToManual < ActiveRecord::Migration
  def self.up
    add_column :manuals, :jira, :integer
  end

  def self.down
    remove_column :manuals, :jira
  end
end
