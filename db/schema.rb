# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 20_240_705_130_643) do
  create_table 'common_areas', force: :cascade do |t|
    t.string 'name'
    t.string 'description'
    t.integer 'max_occupancy'
    t.string 'rules'
    t.integer 'condo_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'condos', force: :cascade do |t|
    t.string 'name'
    t.string 'city'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'unit_types', force: :cascade do |t|
    t.integer 'area'
    t.string 'description'
    t.float 'ideal_fraction'
    t.integer 'condo_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'units', force: :cascade do |t|
    t.integer 'floor'
    t.integer 'number'
    t.integer 'unit_type_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'area'
  end
end
