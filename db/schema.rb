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

ActiveRecord::Schema.define(version: 20180206224140) do

  create_table "terminals", force: :cascade do |t|
    t.integer "terminal_number"
    t.text "terminal_type"
    t.integer "PunchBlock_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["PunchBlock_id"], name: "index_terminals_on_PunchBlock_id"
  end

  create_table "wires", force: :cascade do |t|
    t.integer "number"
    t.string "wire_type"
    t.boolean "multi_core"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end