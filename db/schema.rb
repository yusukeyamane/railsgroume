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

ActiveRecord::Schema.define(version: 20160111065814) do

  create_table "hashtags", force: :cascade do |t|
    t.integer  "couple"
    t.integer  "firstdate"
    t.integer  "onesidelove"
    t.integer  "confession"
    t.integer  "lunch"
    t.integer  "cafe"
    t.integer  "dinner"
    t.integer  "aniversary"
    t.integer  "oneyear_ani"
    t.integer  "onemonth_ani"
    t.integer  "xmas"
    t.integer  "valentine"
    t.integer  "whiteday"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "post_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "file_name"
    t.integer  "restaurant_id"
    t.integer  "post_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "titile"
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.text     "content"
    t.string   "time_zone"
    t.integer  "amount"
    t.integer  "total_eval"
    t.integer  "quality_eval"
    t.integer  "service_eval"
    t.integer  "atomos_eval"
    t.integer  "drink_eval"
    t.integer  "partner_eval"
    t.datetime "visit_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "phone"
    t.string   "url"
  end

end
