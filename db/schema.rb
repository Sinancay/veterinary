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

ActiveRecord::Schema.define(version: 20151215191355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.integer  "role"
    t.integer  "user_id"
    t.integer  "age"
    t.boolean  "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "animals", ["user_id"], name: "index_animals_on_user_id", using: :btree

  create_table "barns", force: :cascade do |t|
    t.date     "barn_cleandate"
    t.integer  "user_id"
    t.text     "equipment_issing"
    t.string   "descrption"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "barns", ["user_id"], name: "index_barns_on_user_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.text     "review"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "sender"
    t.boolean  "status",      default: false, null: false
  end

  add_index "contacts", ["user_id"], name: "index_contacts_on_user_id", using: :btree

  create_table "reports", force: :cascade do |t|
    t.integer  "role"
    t.string   "title"
    t.date     "date"
    t.string   "description"
    t.integer  "status"
    t.string   "review"
    t.string   "findings"
    t.string   "using_drugs"
    t.integer  "animal_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "confirmed"
    t.integer  "user_id"
  end

  add_index "reports", ["animal_id"], name: "index_reports_on_animal_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "name"
    t.string   "username"
    t.string   "telephone"
    t.integer  "salary"
    t.boolean  "gender"
    t.integer  "age",                    limit: 2
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "animals", "users"
  add_foreign_key "barns", "users"
  add_foreign_key "contacts", "users"
  add_foreign_key "reports", "animals"
end
