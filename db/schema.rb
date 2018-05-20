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

ActiveRecord::Schema.define(version: 20180520045039) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", id: :serial, force: :cascade do |t|
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
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "delayed_jobs", id: :serial, force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
  end

  create_table "initial_predictions", force: :cascade do |t|
    t.integer "code"
    t.integer "points"
    t.string "result"
    t.string "description"
  end

  create_table "matches", force: :cascade do |t|
    t.string "result"
    t.datetime "date"
    t.string "location"
    t.integer "phase"
    t.string "country1"
    t.string "country2"
    t.bigint "group_id"
    t.index ["group_id"], name: "index_matches_on_group_id"
  end

  create_table "penca_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "penca_id"
    t.index ["penca_id"], name: "index_penca_users_on_penca_id"
    t.index ["user_id"], name: "index_penca_users_on_user_id"
  end

  create_table "pencas", force: :cascade do |t|
    t.bigint "owner_id"
    t.string "name"
    t.index ["owner_id"], name: "index_pencas_on_owner_id"
  end

  create_table "prediction_values", force: :cascade do |t|
    t.string "value"
    t.integer "earned_points"
    t.bigint "match_id"
    t.bigint "initial_prediction_id"
    t.bigint "user_id"
    t.bigint "penca_id"
    t.index ["initial_prediction_id"], name: "index_prediction_values_on_initial_prediction_id"
    t.index ["match_id"], name: "index_prediction_values_on_match_id"
    t.index ["penca_id"], name: "index_prediction_values_on_penca_id"
    t.index ["user_id"], name: "index_prediction_values_on_user_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "first_name", default: ""
    t.string "last_name", default: ""
    t.string "username", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.json "tokens"
    t.integer "total_points", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "prediction_values", "initial_predictions"
  add_foreign_key "prediction_values", "matches"
  add_foreign_key "prediction_values", "pencas"
  add_foreign_key "prediction_values", "users"
end
