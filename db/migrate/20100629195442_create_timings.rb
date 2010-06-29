class CreateTimings < ActiveRecord::Migration
  def self.up
    create_table :timings do |t|
      t.string :run_time
      t.string :browser
      t.string :tags

      t.timestamps
    end
  end

  def self.down
    drop_table :timings
  end
end
