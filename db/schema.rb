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

ActiveRecord::Schema[8.0].define(version: 2026_02_19_154058) do
  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "live_event_artists", force: :cascade do |t|
    t.integer "live_event_id", null: false
    t.integer "artist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_live_event_artists_on_artist_id"
    t.index ["live_event_id"], name: "index_live_event_artists_on_live_event_id"
  end

  create_table "live_events", force: :cascade do |t|
    t.date "date"
    t.text "live_memo"
    t.string "venue"
    t.string "seat"
    t.text "seat_memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.integer "artist_id"
    t.index ["artist_id"], name: "index_live_events_on_artist_id"
  end

  add_foreign_key "live_event_artists", "artists"
  add_foreign_key "live_event_artists", "live_events"
  add_foreign_key "live_events", "artists"
end
