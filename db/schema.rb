# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_28_032325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "activities", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.string "title"
    t.text "description"
    t.string "date_time"
    t.string "location"
    t.bigint "user_id", null: false
    t.integer "cost"
    t.integer "quantity_limit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_activities_on_category_id"
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "message", null: false
    t.bigint "sender_user_id", null: false
    t.bigint "receiver_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["receiver_user_id"], name: "index_messages_on_receiver_user_id"
    t.index ["sender_user_id"], name: "index_messages_on_sender_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "location"
    t.string "contact_no"
    t.string "emergency_contact"
    t.string "emergency_contact_no"
    t.boolean "cycling"
    t.boolean "golf"
    t.boolean "tennis"
    t.boolean "soccer"
    t.boolean "hiking"
    t.boolean "cricket"
    t.boolean "running"
    t.boolean "basketball"
    t.bigint "account_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "isAdmin"
    t.index ["account_id"], name: "index_profiles_on_account_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "sent_folders", force: :cascade do |t|
    t.text "message", null: false
    t.bigint "sender_user_id", null: false
    t.bigint "receiver_user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["receiver_user_id"], name: "index_sent_folders_on_receiver_user_id"
    t.index ["sender_user_id"], name: "index_sent_folders_on_sender_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "activities", "categories"
  add_foreign_key "activities", "users"
  add_foreign_key "messages", "users", column: "receiver_user_id"
  add_foreign_key "messages", "users", column: "sender_user_id"
  add_foreign_key "profiles", "accounts"
  add_foreign_key "profiles", "users"
  add_foreign_key "sent_folders", "users", column: "receiver_user_id"
  add_foreign_key "sent_folders", "users", column: "sender_user_id"
end
