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

ActiveRecord::Schema.define(version: 20180409210504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_words", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "word_id",     null: false
  end

  create_table "collects", force: :cascade do |t|
    t.boolean  "learned"
    t.string   "frequency"
    t.string   "translation_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_collects_on_user_id", using: :btree
  end

  create_table "collects_translations", id: false, force: :cascade do |t|
    t.integer "translation_id", null: false
    t.integer "collect_id",     null: false
  end

  create_table "langs", force: :cascade do |t|
    t.string   "name"
    t.string   "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "translations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "translations_words", id: false, force: :cascade do |t|
    t.integer "word_id",        null: false
    t.integer "translation_id", null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "lang_id"
    t.string   "translate_to"
    t.integer  "category_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["category_id"], name: "index_users_on_category_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["lang_id"], name: "index_users_on_lang_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "words", force: :cascade do |t|
    t.string   "name"
    t.integer  "lang_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lang_id"], name: "index_words_on_lang_id", using: :btree
  end

  add_foreign_key "collects", "users"
  add_foreign_key "users", "categories"
  add_foreign_key "users", "langs"
  add_foreign_key "words", "langs"
end
