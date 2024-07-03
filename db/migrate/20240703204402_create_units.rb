class CreateUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :units do |t|
      t.integer :floor
      t.integer :number
      t.integer :unit_type_id

      t.timestamps
    end
  end
end
