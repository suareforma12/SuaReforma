class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :email ,        :null => false
      t.string :password_hash, :null => false
      t.string :password_salt, :null => false
      t.string :name
      t.string :role,          :default => "provider"
      t.integer :provider_id

      t.timestamps
    end

    add_index :users, :email
    add_index :users, :provider_id
  end
  def down
    drop_table :users
  end
end
