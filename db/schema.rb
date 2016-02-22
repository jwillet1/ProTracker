# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160222153401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "logs", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.datetime "start"
    t.datetime "end"
    t.string   "purpose"
    t.text     "note"
    t.string   "user"
    t.string   "location"
    t.boolean  "complete"
    t.string   "attribute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "logs", ["vehicle_id"], name: "index_logs_on_vehicle_id", using: :btree

  create_table "vehicles", force: :cascade do |t|
    t.string   "tag_number"
    t.string   "build_id"
    t.string   "label"
    t.string   "milestone"
    t.string   "program"
    t.text     "description"
    t.datetime "expected_delivery_date"
    t.datetime "actual_delivery_date"
    t.string   "owner"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "vehicles", ["build_id"], name: "index_vehicles_on_build_id", using: :btree
  add_index "vehicles", ["tag_number"], name: "index_vehicles_on_tag_number", using: :btree

  add_foreign_key "logs", "vehicles"
end
