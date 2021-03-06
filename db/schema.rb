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

ActiveRecord::Schema.define(version: 20140903083159) do

  create_table "alert_tasks", force: true do |t|
    t.integer  "user_task_intermediate_id"
    t.integer  "firend_relationship_id"
    t.integer  "friend_relationship_id"
    t.boolean  "has_alert"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firend_relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "firend"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personal_data", force: true do |t|
    t.integer  "user_id"
    t.string   "nickname"
    t.string   "sex"
    t.string   "region"
    t.string   "treasure"
    t.integer  "friend_number"
    t.integer  "phone_number"
    t.string   "login_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "social_records", force: true do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.integer  "friend_id"
    t.boolean  "pinch"
    t.boolean  "award"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_task_intermediates", force: true do |t|
    t.integer  "task_id"
    t.integer  "user_id"
    t.integer  "number"
    t.string   "description"
    t.boolean  "is_done"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "login"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
