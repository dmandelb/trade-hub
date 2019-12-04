# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_04_193207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "available_mons", force: :cascade do |t|
    t.bigint "variant_id", null: false
    t.bigint "base_mon_id", null: false
    t.index ["base_mon_id"], name: "index_available_mons_on_base_mon_id"
    t.index ["variant_id"], name: "index_available_mons_on_variant_id"
  end

  create_table "base_mons", force: :cascade do |t|
    t.string "name"
    t.integer "dex_num"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "generation"
  end

  create_table "dexes", force: :cascade do |t|
    t.bigint "trainer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trainer_id"], name: "index_dexes_on_trainer_id"
  end

  create_table "entries", force: :cascade do |t|
    t.bigint "dex_id", null: false
    t.bigint "available_mon_id", null: false
    t.boolean "filled?", default: false, null: false
    t.boolean "available?", default: false, null: false
    t.integer "priority", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["available_mon_id"], name: "index_entries_on_available_mon_id"
    t.index ["dex_id"], name: "index_entries_on_dex_id"
  end

  create_table "friendships", force: :cascade do |t|
    t.bigint "trainer_id", null: false
    t.bigint "friend_id", null: false
    t.integer "level", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["friend_id"], name: "index_friendships_on_friend_id"
    t.index ["trainer_id"], name: "index_friendships_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "trainer_name", null: false
    t.string "email", null: false
    t.boolean "display_email", default: false
    t.text "contact_info"
    t.string "location"
    t.string "team"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "variants", force: :cascade do |t|
    t.boolean "shiny?", default: false, null: false
    t.boolean "lucky?", default: false, null: false
    t.boolean "shadow?", default: false, null: false
    t.string "gender"
  end

  add_foreign_key "available_mons", "base_mons"
  add_foreign_key "available_mons", "variants"
  add_foreign_key "entries", "available_mons"
  add_foreign_key "entries", "dexes"
  add_foreign_key "friendships", "trainers"
end
