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

ActiveRecord::Schema.define(version: 20160422120559) do

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id",    limit: 4
    t.integer  "recipient_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "conversations", ["recipient_id"], name: "index_conversations_on_recipient_id", using: :btree
  add_index "conversations", ["sender_id"], name: "index_conversations_on_sender_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "code",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body",            limit: 65535
    t.integer  "conversation_id", limit: 4
    t.integer  "user_id",         limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.integer  "notice_period", limit: 4
    t.integer  "dob",           limit: 4
    t.integer  "job_type",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "user_connections", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "count",             limit: 4
    t.integer  "connected_user_id", limit: 4
  end

  create_table "user_countries", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "country_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "user_education_details", force: :cascade do |t|
    t.string   "higest_education",                  limit: 255
    t.string   "specilization",                     limit: 255
    t.string   "institute",                         limit: 255
    t.integer  "passing_year",                      limit: 4
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.integer  "profile_id",                        limit: 4
    t.integer  "user_id",                           limit: 4
    t.integer  "user_education_details_attributes", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                     limit: 255, default: "", null: false
    t.string   "encrypted_password",        limit: 255, default: "", null: false
    t.string   "reset_password_token",      limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",             limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",        limit: 255
    t.string   "last_sign_in_ip",           limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "first_name",                limit: 255
    t.string   "last_name",                 limit: 255
    t.string   "current_location",          limit: 255
    t.integer  "mobile_number",             limit: 4
    t.integer  "total_experience",          limit: 4
    t.string   "industry",                  limit: 255
    t.string   "education_details",         limit: 255
    t.string   "previous_company_details",  limit: 255
    t.string   "avatar_file_name",          limit: 255
    t.string   "avatar_content_type",       limit: 255
    t.integer  "avatar_file_size",          limit: 4
    t.datetime "avatar_updated_at"
    t.integer  "user_education_details_id", limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
end
