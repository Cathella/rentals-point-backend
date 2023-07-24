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

ActiveRecord::Schema[7.0].define(version: 2023_07_23_161312) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "properties", force: :cascade do |t|
    t.string "title"
    t.string "img_url1"
    t.string "img_url2"
    t.string "img_url3"
    t.string "img_url4"
    t.string "img_url5"
    t.text "description"
    t.integer "price"
    t.integer "bedrooms"
    t.integer "baths"
    t.boolean "kitchen"
    t.boolean "store"
    t.boolean "water"
    t.boolean "electricity"
    t.boolean "security"
    t.string "property_type"
    t.string "payment_freq"
    t.string "location"
    t.string "parking"
    t.string "owner_name"
    t.string "owner_contact"
    t.string "owner_gender"
    t.string "property_avail"
    t.string "lives"
    t.string "video_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "phone"
    t.string "gender"
    t.integer "age"
    t.text "bio"
    t.string "housemate_gender"
    t.integer "housemate_age"
    t.string "lifestyle"
    t.text "special_notes"
    t.decimal "budget"
    t.string "facebook"
    t.string "instagram"
    t.string "twitter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "account", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "user_profiles", "users"
end
