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

ActiveRecord::Schema.define(version: 2021_05_29_101637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "date"
    t.string "duration"
    t.decimal "price"
    t.float "longitude"
    t.float "latitude"
    t.string "meeting_details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "guests_number"
    t.bigint "tour_id", null: false
    t.bigint "customer_id", null: false
    t.index ["customer_id"], name: "index_reservations_on_customer_id"
    t.index ["tour_id"], name: "index_reservations_on_tour_id"
  end

  create_table "tour_options", force: :cascade do |t|
    t.string "language"
    t.time "start_time_1"
    t.time "start_time_2"
    t.time "start_time_3"
    t.boolean "monday"
    t.boolean "tuesday"
    t.boolean "wednesday"
    t.boolean "thursday"
    t.boolean "friday"
    t.boolean "saturday"
    t.boolean "sunday"
    t.boolean "group"
    t.boolean "private"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "tour_id", null: false
    t.index ["tour_id"], name: "index_tour_options_on_tour_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.json "photos"
    t.datetime "date"
    t.string "duration"
    t.integer "price"
    t.float "longitude"
    t.float "latitude"
    t.string "meeting_details"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "reservations", "customers"
  add_foreign_key "reservations", "tours"
  add_foreign_key "tour_options", "tours"
end
