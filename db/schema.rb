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

ActiveRecord::Schema[7.1].define(version: 2024_07_16_220735) do
  create_table "common_areas", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "max_occupancy"
    t.string "rules"
    t.integer "condo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "condos", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "property_owners", force: :cascade do |t|
    t.string "document_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unit_types", force: :cascade do |t|
    t.integer "area"
    t.string "description"
    t.float "ideal_fraction"
    t.integer "condo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.integer "floor"
    t.integer "number"
    t.integer "unit_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "area"
    t.integer "tenant_id"
    t.integer "owner_id"
    t.string "description"
    t.string "condo_name"
    t.string "owner_name"
    t.integer "property_owner_id", null: false
    t.integer "condo_id"
    t.index ["property_owner_id"], name: "index_units_on_property_owner_id"
  end

  add_foreign_key "units", "property_owners"
end
