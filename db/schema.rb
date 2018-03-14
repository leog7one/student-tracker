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

ActiveRecord::Schema.define(version: 20180314215503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grade_levels", force: :cascade do |t|
    t.string "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "homeroom_id"
    t.bigint "student_id"
    t.bigint "referral_id"
    t.index ["homeroom_id"], name: "index_grade_levels_on_homeroom_id"
    t.index ["referral_id"], name: "index_grade_levels_on_referral_id"
    t.index ["student_id"], name: "index_grade_levels_on_student_id"
  end

  create_table "homerooms", force: :cascade do |t|
    t.string "room_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "student_id"
    t.bigint "grade_level_id"
    t.index ["grade_level_id"], name: "index_homerooms_on_grade_level_id"
    t.index ["student_id"], name: "index_homerooms_on_student_id"
  end

  create_table "referrals", force: :cascade do |t|
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.bigint "user_id"
    t.bigint "student_id"
    t.datetime "occurance_date"
    t.bigint "homeroom_id"
    t.bigint "grade_level_id"
    t.index ["category_id"], name: "index_referrals_on_category_id"
    t.index ["grade_level_id"], name: "index_referrals_on_grade_level_id"
    t.index ["homeroom_id"], name: "index_referrals_on_homeroom_id"
    t.index ["student_id"], name: "index_referrals_on_student_id"
    t.index ["user_id"], name: "index_referrals_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "student_id_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "homeroom_id"
    t.bigint "grade_level_id"
    t.index ["grade_level_id"], name: "index_students_on_grade_level_id"
    t.index ["homeroom_id"], name: "index_students_on_homeroom_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "grade_levels", "homerooms"
  add_foreign_key "grade_levels", "referrals"
  add_foreign_key "grade_levels", "students"
  add_foreign_key "homerooms", "grade_levels"
  add_foreign_key "homerooms", "students"
  add_foreign_key "referrals", "categories"
  add_foreign_key "referrals", "grade_levels"
  add_foreign_key "referrals", "homerooms"
  add_foreign_key "referrals", "students"
  add_foreign_key "referrals", "users"
  add_foreign_key "students", "grade_levels"
  add_foreign_key "students", "homerooms"
  add_foreign_key "students", "users"
end
