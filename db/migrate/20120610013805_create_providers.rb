class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :type_person
      t.string :name
      t.string :email
      t.string :document
      t.text :description
      t.string :type_service
      t.string :phone

      t.timestamps
    end
  end
end
