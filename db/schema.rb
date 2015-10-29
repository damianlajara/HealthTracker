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

ActiveRecord::Schema.define(version: 20151029175334) do

  create_table "appointments", force: :cascade do |t|
    t.string   "doctor"
    t.string   "location"
    t.datetime "date"
    t.text     "reasons"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "circles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feelings", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "sick"
    t.date     "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "illness_symptoms", force: :cascade do |t|
    t.integer  "illness_id"
    t.integer  "symptom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "illnesses", force: :cascade do |t|
    t.string   "common_term"
    t.string   "medical_term"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "medications", force: :cascade do |t|
    t.string   "brand_name"
    t.string   "generic_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "symptoms", force: :cascade do |t|
    t.string   "common_term"
    t.string   "medical_term"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "user_circles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "circle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_exercises", force: :cascade do |t|
    t.integer  "exercise_id"
    t.integer  "user_id"
    t.integer  "regular_frequency"
    t.text     "irregular_frequency"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "user_illnesses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "illness_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "severity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_medications", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "medication_id"
    t.integer  "amount"
    t.integer  "frequency"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "user_sleeps", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "hours"
    t.time     "start"
    t.time     "wake"
    t.string   "quality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_sleeps", ["user_id"], name: "index_user_sleeps_on_user_id"

  create_table "user_statuses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_statuses", ["user_id"], name: "index_user_statuses_on_user_id"

  create_table "user_symptoms", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "symptom_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthdate"
    t.integer  "height"
    t.integer  "weight"
    t.string   "work"
    t.string   "home"
    t.string   "school"
    t.string   "gender"
    t.integer  "zipcode"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
