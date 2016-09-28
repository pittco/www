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

ActiveRecord::Schema.define(version: 20160928153041) do

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_dt"
    t.datetime "end_dt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seating_charts", force: :cascade do |t|
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seating_rows", force: :cascade do |t|
    t.string   "name"
    t.integer  "seating_chart_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "seating_rows", ["seating_chart_id"], name: "index_seating_rows_on_seating_chart_id"

  create_table "seats", force: :cascade do |t|
    t.integer  "position"
    t.integer  "seating_row_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "seats", ["seating_row_id"], name: "index_seats_on_seating_row_id"
  add_index "seats", ["user_id"], name: "index_seats_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.text     "data_hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
