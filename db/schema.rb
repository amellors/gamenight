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

ActiveRecord::Schema.define(version: 20130819021627) do

  create_table "coop_wins", force: true do |t|
    t.boolean  "players_win"
    t.integer  "players_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gameplays", force: true do |t|
    t.integer  "night_id"
    t.integer  "game_id"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "finished"
    t.integer  "win_info_id"
    t.string   "win_info_type"
  end

  create_table "gameplays_players", force: true do |t|
    t.integer "gameplay_id"
    t.integer "player_id"
  end

  create_table "games", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "win_type"
  end

  create_table "nights", force: true do |t|
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  create_table "nights_players", force: true do |t|
    t.integer "night_id"
    t.integer "player_id"
  end

  create_table "normal_wins", force: true do |t|
    t.integer  "winner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resistance_players", force: true do |t|
    t.integer "resistance_win_id"
    t.integer "player_id"
  end

  create_table "resistance_wins", force: true do |t|
    t.boolean  "spies_win"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "score_win_entries", force: true do |t|
    t.integer "score_win_id"
    t.integer "player_id"
    t.integer "score"
  end

  create_table "score_wins", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spy_players", force: true do |t|
    t.integer "resistance_win_id"
    t.integer "player_id"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
