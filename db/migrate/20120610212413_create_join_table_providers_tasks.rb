class CreateJoinTableProvidersTasks < ActiveRecord::Migration
  def up
    create_table :providers_tasks, :id => false do |t|
      t.integer :provider_id, :null => false
      t.integer :task_id,     :null => false
    end
  end

  def down
    drop_table :providers_tasks
  end
end
