class AddAreaToUnit < ActiveRecord::Migration[7.1]
  def change
    add_column :units, :area, :integer
  end
end
