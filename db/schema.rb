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

ActiveRecord::Schema.define(version: 2021_07_28_193623) do

  create_table "accounts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string "status"
    t.string "title"
    t.integer "cost"
    t.datetime "start"
    t.text "cancellation_reason"
    t.boolean "refunded"
    t.integer "trainer_id"
    t.integer "schedule_id"
    t.integer "lesson_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_bookings_on_account_id"
    t.index ["lesson_id"], name: "index_bookings_on_lesson_id"
    t.index ["schedule_id"], name: "index_bookings_on_schedule_id"
    t.index ["trainer_id"], name: "index_bookings_on_trainer_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "photo"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.text "bio"
    t.integer "user_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_clients_on_account_id"
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "lesson_payments", force: :cascade do |t|
    t.string "payment_number"
    t.string "status"
    t.date "date"
    t.integer "cost"
    t.string "service"
    t.integer "booking_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_lesson_payments_on_account_id"
    t.index ["booking_id"], name: "index_lesson_payments_on_booking_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "image"
    t.string "title"
    t.integer "duration"
    t.integer "cost"
    t.string "category"
    t.string "language"
    t.string "level"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string "title"
    t.datetime "start"
    t.datetime "end"
    t.integer "trainer_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_schedules_on_account_id"
    t.index ["trainer_id"], name: "index_schedules_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "photo"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.text "bio"
    t.string "experience"
    t.integer "user_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_trainers_on_account_id"
    t.index ["user_id"], name: "index_trainers_on_user_id"
  end

  create_table "volunteer_bookings", force: :cascade do |t|
    t.string "b_time"
    t.string "b_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "f_name"
    t.string "l_name"
    t.string "phone_number"
    t.string "email"
  end

end
