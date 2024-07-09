class CreatePropertyOwners < ActiveRecord::Migration[7.1]
  def change
    create_table :property_owners do |t|
      t.string :document_number

      t.timestamps
    end
  end
end
