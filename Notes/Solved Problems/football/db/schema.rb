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

ActiveRecord::Schema.define(version: 20150202221936) do

  create_table "cities", force: :cascade do |t|
    t.text    "name"
    t.integer "population_2013"
    t.integer "population_2010"
    t.float   "population_change"
    t.integer "population_density"
    t.integer "state_id"
  end

  create_table "coaches", force: :cascade do |t|
    t.string   "name"
    t.integer  "team_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "wins",       default: 0
    t.integer  "losses",     default: 0
  end

  create_table "games", force: :cascade do |t|
    t.datetime "date"
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.integer  "home_score"
    t.integer  "away_score"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.float    "point_spread"
  end

  create_table "predictions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.integer  "home_score"
    t.integer  "away_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.text    "name"
    t.text    "abbr"
    t.text    "capital"
    t.text    "biggest_city"
    t.integer "population"
    t.integer "area"
  end

  create_table "teams", force: :cascade do |t|
    t.text    "name"
    t.integer "wins"
    t.integer "losses"
    t.integer "ties"
    t.text    "division"
    t.text    "conference"
    t.boolean "playoff"
    t.integer "city_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
