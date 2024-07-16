class AddColumsToUnits < ActiveRecord::Migration[7.1]
  def change
    add_column :units, :tenant_id, :integer
    add_column :units, :owner_id, :integer
    add_column :units, :description, :string
    add_column :units, :condo_name, :string
    add_column :units, :owner_name, :string
  end
end
