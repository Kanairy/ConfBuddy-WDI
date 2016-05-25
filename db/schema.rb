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

ActiveRecord::Schema.define(version: 20160525050951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_users", id: false, force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.integer  "type_id"
    t.string   "time"
    t.string   "presenter"
    t.text     "description"
    t.string   "sponsor"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "stream"
    t.datetime "start_at"
    t.datetime "end_at"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "user_one_id"
    t.integer "user_two_id"
    t.integer "event_id"
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "buddy"
    t.string   "strength"
    t.string   "seeking"
    t.string   "linkedin_url"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "linkedin_image_url"
    t.string   "linkedin_id"
    t.string   "linkedin_headline"
    t.string   "linkedin_location"
    t.string   "linkedin_industry"
    t.string   "linkedin_positions"
    t.string   "linkedin_specialities"
  end

end
