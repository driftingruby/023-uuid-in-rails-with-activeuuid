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

ActiveRecord::Schema.define(version: 20160303004338) do

  create_table "entries", force: :cascade do |t|
    t.uuid     "lottery_id", limit: 16
    t.string   "numbers"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "entries", ["id"], name: "sqlite_autoindex_entries_1", unique: true

  create_table "lotteries", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.string   "winning_number"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "lotteries", ["id"], name: "sqlite_autoindex_lotteries_1", unique: true

end
