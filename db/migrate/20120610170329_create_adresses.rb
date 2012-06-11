class CreateAdresses < ActiveRecord::Migration
  def change
    create_table :adresses do |t|
      t.string :cep
      t.string :street
      t.string :number
      t.string :complement
      t.string :city
      t.string :state
      t.integer :provider_id, :null => false

      t.timestamps
    end
  end
end
