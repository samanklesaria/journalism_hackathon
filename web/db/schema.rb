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

ActiveRecord::Schema[8.0].define(version: 2025_02_01_193007) do
  create_table "capture_parts", force: :cascade do |t|
    t.text "text"
    t.string "timestamp"
    t.text "embeddings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "capture_id"
    t.index ["capture_id"], name: "index_capture_parts_on_capture_id"
  end

  create_table "captures", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.string "title"
    t.datetime "starts_at"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "capture_parts", "captures"
end
