class CreateCommonAreas < ActiveRecord::Migration[7.1]
  def change
    create_table :common_areas do |t|
      t.string :name
      t.string :description
      t.integer :max_occupancy
      t.string :rules
      t.integer :condo_id

      t.timestamps
    end
  end
end
