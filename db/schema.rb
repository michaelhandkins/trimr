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

ActiveRecord::Schema.define(version: 2019_10_23_225604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barbers", force: :cascade do |t|
    t.string "name"
    t.string "zip_code"
    t.string "phone_number"
    t.text "barber_bio"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "square_embed_code"
    t.string "booking_site_url"
    t.float "latitude"
    t.float "longitude"
    t.string "profile_picture"
    t.string "city"
    t.string "state"
    t.index ["user_id"], name: "index_barbers_on_user_id"
    t.index ["zip_code"], name: "index_barbers_on_zip_code"
  end

  create_table "haircuts", force: :cascade do |t|
    t.string "haircut_name"
    t.text "description"
    t.integer "cost"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "barber_id"
    t.index ["cost"], name: "index_haircuts_on_cost"
    t.index ["user_id"], name: "index_haircuts_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "photo"
    t.text "caption"
    t.integer "barber_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "state"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
