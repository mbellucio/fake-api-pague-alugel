class CreateUnitTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :unit_types do |t|
      t.integer :area
      t.string :description
      t.float :ideal_fraction
      t.integer :condo_id

      t.timestamps
    end
  end
end
