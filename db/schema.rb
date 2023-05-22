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

ActiveRecord::Schema[7.0].define(version: 2023_05_22_073930) do
  create_table "coaches", force: :cascade do |t|
    t.string "coach_name"
    t.string "type_of_coach"
    t.integer "age"
    t.integer "coaching_time_year"
    t.integer "player_coach_rate"
    t.integer "one_seriase_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "make_team_id"
    t.index ["make_team_id"], name: "index_coaches_on_make_team_id"
  end

  create_table "empires", force: :cascade do |t|
    t.string "empire_name"
    t.integer "age"
    t.integer "empire_experience"
    t.string "address"
    t.string "phone_number"
    t.integer "one_match_empiring_rate"
    t.string "two_match_empiring_rate"
    t.string "complet_seriase_empiring_rate"
    t.string "email"
    t.string "star"
    t.string "picture"
    t.integer "match_empiring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "seriase_id"
    t.index ["seriase_id"], name: "index_empires_on_seriase_id"
  end

  create_table "grounds", force: :cascade do |t|
    t.string "name"
    t.date "grount_create_date"
    t.string "ground_address"
    t.string "ground_boundry_size"
    t.string "one_match_rate"
    t.string "two_match_rate"
    t.string "all_seriase_rate"
    t.string "ground_onner_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "make_teams", force: :cascade do |t|
    t.string "team_name"
    t.string "total_player_and_team_member"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "make_teams_seriases", force: :cascade do |t|
    t.integer "make_team_id"
    t.integer "seriase_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "make_teams_team_onners", force: :cascade do |t|
    t.integer "team_onner_id"
    t.integer "make_team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "player_total_match"
    t.string "address"
    t.integer "average"
    t.string "player_type"
    t.integer "player_requier_rate"
    t.integer "player_best_performance"
    t.string "player_profile_pic"
    t.date "player_dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "password"
    t.string "token"
    t.integer "make_team_id"
    t.index ["make_team_id"], name: "index_players_on_make_team_id"
  end

  create_table "seriases", force: :cascade do |t|
    t.string "seriase_name"
    t.string "seriase_onner"
    t.date "start_seriase_date"
    t.date "end_seriase_date"
    t.string "first_price"
    t.string "second_price"
    t.integer "seriase_level"
    t.string "seriase_onner_number"
    t.string "picture"
    t.string "match_timing"
    t.string "ground_location"
    t.integer "entry_frees"
    t.string "seriase_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_onners", force: :cascade do |t|
    t.string "name"
    t.string "onner_team_name"
    t.string "email"
    t.string "password"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "coaches", "make_teams"
  add_foreign_key "empires", "seriases"
  add_foreign_key "players", "make_teams"
end
