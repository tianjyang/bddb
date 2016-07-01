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

ActiveRecord::Schema.define(version: 20160701013102) do

  create_table "colors", force: :cascade do |t|
    t.string  "name"
    t.integer "count", default: 0
  end

  create_table "dbags", force: :cascade do |t|
    t.string   "title"
    t.string   "plate_num"
    t.text     "summary"
    t.integer  "make_id"
    t.integer  "color_id"
    t.integer  "incident_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incidents", force: :cascade do |t|
    t.string  "name"
    t.string  "descrip"
    t.integer "count",   default: 0
  end

  create_table "makes", force: :cascade do |t|
    t.string  "name"
    t.integer "count", default: 0
  end

end
