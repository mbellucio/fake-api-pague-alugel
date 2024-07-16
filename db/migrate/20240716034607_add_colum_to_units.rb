class AddColumToUnits < ActiveRecord::Migration[7.1]
  def change
    add_reference :units, :property_owner, null: false, foreign_key: true
  end
end
