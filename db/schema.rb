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

ActiveRecord::Schema.define(version: 20180316181038) do

  create_table "devices", force: :cascade do |t|
    t.string "device_type"
    t.string "device_location"
    t.text "device_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "port_id"
    t.string "device_name"
    t.index ["port_id"], name: "index_devices_on_port_id"
  end

  create_table "ports", force: :cascade do |t|
    t.string "port_type"
    t.string "signal_type"
    t.text "port_description"
    t.boolean "port_input"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "port"
    t.integer "device_id"
  end

  create_table "punch_blocks", force: :cascade do |t|
    t.integer "block_number"
    t.string "block_type"
    t.string "block"
    t.text "description"
    t.string "block_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runcodes", force: :cascade do |t|
    t.integer "runcode"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "wire_id"
    t.integer "port_id"
    t.integer "terminal_id"
    t.index ["port_id"], name: "index_runcodes_on_port_id"
    t.index ["terminal_id"], name: "index_runcodes_on_terminal_id"
    t.index ["wire_id"], name: "index_runcodes_on_wire_id"
  end

  create_table "terminals", force: :cascade do |t|
    t.integer "terminal_number"
    t.string "terminal_type"
    t.string "signal_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "punch_block_id"
    t.index ["punch_block_id"], name: "index_terminals_on_punch_block_id"
  end

  create_table "wires", force: :cascade do |t|
    t.integer "wire_number"
    t.string "wire_type"
    t.string "signal_type"
    t.text "wire_description"
    t.boolean "multi_pair"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
