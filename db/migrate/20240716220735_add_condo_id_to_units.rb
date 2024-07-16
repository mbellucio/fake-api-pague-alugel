class AddCondoIdToUnits < ActiveRecord::Migration[7.1]
  def change
    add_column :units, :condo_id, :integer
  end
end
