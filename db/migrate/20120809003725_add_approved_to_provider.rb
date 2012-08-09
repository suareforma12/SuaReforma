class AddApprovedToProvider < ActiveRecord::Migration
  def up
    add_column :providers, :approved, :string, :default => "N", :null => false
  end

  def down
    remove_column :providers, :approved
  end
end