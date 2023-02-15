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

ActiveRecord::Schema[7.0].define(version: 2023_02_15_043200) do
  create_table "room_types", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "room_type"
    t.text "description"
    t.integer "bedroom_capacity"
    t.integer "number_of_rooms"
    t.integer "price"
    t.boolean "parking"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.string "image5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "room_types_id", null: false
    t.integer "room_number"
    t.string "room_condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_types_id"], name: "index_rooms_on_room_types_id"
  end

  create_table "user_profiles", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "full_name"
    t.string "username"
    t.string "password"
    t.string "gender"
    t.integer "age"
    t.string "email_address"
    t.integer "mobile"
    t.string "bio"
    t.string "role"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "username"
    t.string "email_address"
    t.string "password_digest"
    t.string "password_confirmation"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "rooms", "room_types", column: "room_types_id"
  add_foreign_key "user_profiles", "users"
end
