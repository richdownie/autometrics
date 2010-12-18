class CreateIterations < ActiveRecord::Migration
  def self.up
    create_table :iterations do |t|
      t.string :title

      t.timestamps
    end
    Iteration.create(:title => 'January Iteration1')
  end

  def self.down
    drop_table :iterations
  end
end
