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

ActiveRecord::Schema[7.0].define(version: 2023_02_20_094638) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "car_id", null: false
    t.datetime "book_date"
    t.datetime "return_date"
    t.integer "number_of_passengers"
    t.string "destination_location"
    t.boolean "is_our_driver"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_car_bookings_on_car_id"
    t.index ["user_id"], name: "index_car_bookings_on_user_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "car_registration"
    t.string "car_type"
    t.integer "no_of_seats"
    t.string "car_condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string "meal_type"
    t.string "meal_name"
    t.integer "meal_price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_services", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "user_room_booking_id", null: false
    t.bigint "room_id", null: false
    t.date "service_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_room_services_on_room_id"
    t.index ["user_id"], name: "index_room_services_on_user_id"
    t.index ["user_room_booking_id"], name: "index_room_services_on_user_room_booking_id"
  end

  create_table "room_types", force: :cascade do |t|
    t.string "room_type"
    t.text "description"
    t.string "room_label"
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

  create_table "rooms", force: :cascade do |t|
    t.bigint "room_type_id", null: false
    t.string "room_number"
    t.string "room_condition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_type_id"], name: "index_rooms_on_room_type_id"
  end

  create_table "special_meal_bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "meal_name"
    t.string "meal_type"
    t.string "meal_description"
    t.integer "number_of_kids"
    t.integer "number_of_adults"
    t.datetime "booking_date"
    t.integer "meal_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_special_meal_bookings_on_user_id"
  end

  create_table "user_meal_bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "meal_id", null: false
    t.bigint "room_id", null: false
    t.string "booking_type"
    t.datetime "booking_date"
    t.integer "quantity"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_user_meal_bookings_on_meal_id"
    t.index ["room_id"], name: "index_user_meal_bookings_on_room_id"
    t.index ["user_id"], name: "index_user_meal_bookings_on_user_id"
  end

  create_table "user_profiles", force: :cascade do |t|
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

  create_table "user_room_bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "room_id", null: false
    t.integer "number_of_residents"
    t.datetime "booking_date"
    t.datetime "check_out_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_user_room_bookings_on_room_id"
    t.index ["user_id"], name: "index_user_room_bookings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email_address"
    t.string "password_digest"
    t.string "password_confirmation"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "car_bookings", "cars"
  add_foreign_key "car_bookings", "users"
  add_foreign_key "room_services", "rooms"
  add_foreign_key "room_services", "user_room_bookings"
  add_foreign_key "room_services", "users"
  add_foreign_key "rooms", "room_types"
  add_foreign_key "special_meal_bookings", "users"
  add_foreign_key "user_meal_bookings", "meals"
  add_foreign_key "user_meal_bookings", "rooms"
  add_foreign_key "user_meal_bookings", "users"
  add_foreign_key "user_profiles", "users"
  add_foreign_key "user_room_bookings", "rooms"
  add_foreign_key "user_room_bookings", "users"
end
