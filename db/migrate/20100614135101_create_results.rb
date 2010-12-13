class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :results
    drop_table :manuals
  end
end
