# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_03_115703) do

  create_table "reservations", force: :cascade do |t|
    t.string "lefoglaló_neve"
    t.datetime "mettől"
    t.datetime "meddig"
    t.integer "resource_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resource_id"], name: "index_reservations_on_resource_id"
  end

  create_table "resource_types", force: :cascade do |t|
    t.string "név", limit: 32
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "név", limit: 32, null: false
    t.string "kód", limit: 32, null: false
    t.integer "resource_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resource_type_id"], name: "index_resources_on_resource_type_id"
  end

  add_foreign_key "reservations", "resources"
  add_foreign_key "resources", "resource_types"
end
