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

ActiveRecord::Schema[7.0].define(version: 2023_06_24_145353) do
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

end
