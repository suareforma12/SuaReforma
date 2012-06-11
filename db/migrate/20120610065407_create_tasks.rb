class CreateTasks < ActiveRecord::Migration
  def up
    create_table :tasks do |t|
      t.string :name
      t.string :pending, :default => "S"

      t.timestamps
    end
  end

  def down
    drop_table :tasks
  end
end
