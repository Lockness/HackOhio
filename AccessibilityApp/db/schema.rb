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

ActiveRecord::Schema.define(version: 20161119205001) do

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "lat"
    t.string   "long"
    t.string   "formatted_address"
    t.string   "placeid"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "wide_door_entryways",      default: "N/A"
    t.string   "bathroom_accessibility",   default: "N/A"
    t.string   "accessible_table_heights", default: "N/A"
    t.string   "additional_comments",      default: "N/A"
    t.string   "handicap_parking",         default: "N/A"
    t.string   "step_free_access",         default: "N/A"
    t.string   "automatic_doors",          default: "N/A"
    t.string   "elevator",                 default: "N/A"
    t.string   "hearing_impaired_accom",   default: "N/A"
    t.string   "mobility_impaired_accom",  default: "N/A"
    t.string   "visual_impaired_accom",    default: "N/A"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "points",                 default: 0,  null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
