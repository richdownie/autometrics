class CreateManuals < ActiveRecord::Migration
  def self.up
    create_table :manuals do |t|
      t.string :scenario

      t.timestamps
    end
    Manual.create(:scenario => "First")
  end

  def self.down
  end
end
