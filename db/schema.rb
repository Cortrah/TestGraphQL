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

ActiveRecord::Schema.define(version: 20160211032449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "map_id"
  end

  create_table "border_types", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.boolean  "is_directional"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "environment_types", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "environments", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "environment_type_id"
    t.text     "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.datetime "next_tick"
    t.integer  "map_id"
    t.integer  "current_turn_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "maps", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "rows"
    t.integer  "cols"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "game_id"
  end

  create_table "position_states", force: :cascade do |t|
    t.string   "name"
    t.integer  "position_id"
    t.integer  "turn_id"
    t.integer  "score"
    t.integer  "trade_value"
    t.integer  "money_income"
    t.integer  "materials_income"
    t.integer  "research_income"
    t.integer  "saved_money"
    t.integer  "saved_materials"
    t.integer  "saved_research"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "color"
    t.integer  "first_turn"
    t.integer  "last_turn"
    t.boolean  "is_secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "game_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "row"
    t.integer  "col"
    t.integer  "environment_id"
    t.integer  "position_state_id"
    t.integer  "map_id"
    t.integer  "money"
    t.integer  "materials"
    t.integer  "research"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.boolean  "is_secret"
  end

  create_table "regions_borders", force: :cascade do |t|
    t.string   "name"
    t.integer  "source_id"
    t.integer  "sink_id"
    t.integer  "border_type_id"
    t.boolean  "is_secret"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "turns", force: :cascade do |t|
    t.integer  "number"
    t.text     "introduction"
    t.text     "results"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "game_id"
  end

  create_table "unit_action_types", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description_template"
    t.text     "results_template"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "unit_actions", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.integer  "position_state_id"
    t.integer  "unit_action_type_id"
    t.integer  "phase"
    t.integer  "cost"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "unit_types", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.integer  "money_cost"
    t.integer  "material_cost"
    t.integer  "movement"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "range_attack"
    t.integer  "cargo_capacity"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "units", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
