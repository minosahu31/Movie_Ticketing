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

ActiveRecord::Schema.define(version: 20160308132151) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "theater_id", limit: 4
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "movie_theater_id", limit: 4
    t.integer  "customer_id",      limit: 4
    t.time     "show_timing"
    t.integer  "seat_number",      limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "movie_theaters", id: false, force: :cascade do |t|
    t.integer "movie_id",   limit: 4
    t.integer "theater_id", limit: 4
  end

  add_index "movie_theaters", ["movie_id", "theater_id"], name: "index_movie_theaters_on_movie_id_and_theater_id", using: :btree

  create_table "movies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "director",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "theaters", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "owner_name", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
