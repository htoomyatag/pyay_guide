# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161108033413) do

  create_table "admins", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "advertisements", force: :cascade do |t|
    t.string   "category"
    t.string   "shop_id"
    t.string   "main_ads"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "airlines", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.string   "email"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "arrival_time"
    t.string   "departure_time"
    t.string   "days"
    t.string   "flight_number"
    t.string   "from"
    t.string   "to"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "buses", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "fromtownship"
    t.string   "totownship"
    t.string   "departuretime"
    t.string   "description"
    t.string   "option_phone1"
    t.string   "option_phone2"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "carlines", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.string   "email"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "from"
    t.string   "to"
    t.string   "arrival_time"
    t.string   "departure_time"
    t.string   "days"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "cities", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "hoteltype"
    t.string   "description"
    t.string   "option_phone1"
    t.string   "option_phone2"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "ratings", force: :cascade do |t|
    t.string   "username"
    t.string   "rate_number"
    t.string   "rate_name"
    t.string   "rate_category"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "region"
    t.string   "township"
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.string   "email"
    t.string   "category"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "simple_tables", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "category_id"
    t.string   "description"
    t.string   "option_phone1"
    t.string   "option_phone2"
    t.string   "computer_category"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "souvenirs", force: :cascade do |t|
    t.string   "region"
    t.string   "township"
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.string   "email"
    t.string   "category"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "stickey_advertisements", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
    t.string   "avatar4_file_name"
    t.string   "avatar4_content_type"
    t.integer  "avatar4_file_size"
    t.datetime "avatar4_updated_at"
    t.string   "avatar5_file_name"
    t.string   "avatar5_content_type"
    t.integer  "avatar5_file_size"
    t.datetime "avatar5_updated_at"
  end

  create_table "tour_packages", force: :cascade do |t|
    t.string   "package_name"
    t.string   "price"
    t.text     "detail"
    t.text     "duration"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "trains", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.string   "email"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "from"
    t.string   "to"
    t.string   "arrival_time"
    t.string   "departure_time"
    t.string   "remark"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "travel_posts", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.string   "writer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name",                   default: "", null: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "authentication_token"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "voyages", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "website"
    t.string   "email"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "from"
    t.string   "to"
    t.string   "arrival_time"
    t.string   "departure_time"
    t.string   "days"
    t.text     "remark"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
