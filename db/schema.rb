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

ActiveRecord::Schema.define(version: 20160319174329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "climates", force: :cascade do |t|
    t.text "name"
  end

  create_table "monster_climates", force: :cascade do |t|
    t.integer "climate_id"
    t.integer "monster_id"
  end

  add_index "monster_climates", ["climate_id"], name: "index_monster_climates_on_climate_id", using: :btree
  add_index "monster_climates", ["monster_id"], name: "index_monster_climates_on_monster_id", using: :btree

  create_table "monster_planes", force: :cascade do |t|
    t.integer "plane_id"
    t.integer "monster_id"
  end

  add_index "monster_planes", ["monster_id"], name: "index_monster_planes_on_monster_id", using: :btree
  add_index "monster_planes", ["plane_id"], name: "index_monster_planes_on_plane_id", using: :btree

  create_table "monster_terrains", force: :cascade do |t|
    t.integer "terrain_id"
    t.integer "monster_id"
  end

  add_index "monster_terrains", ["monster_id"], name: "index_monster_terrains_on_monster_id", using: :btree
  add_index "monster_terrains", ["terrain_id"], name: "index_monster_terrains_on_terrain_id", using: :btree

  create_table "monsters", force: :cascade do |t|
    t.text     "name"
    t.decimal  "cr",                   precision: 5, scale: 2
    t.integer  "xp"
    t.text     "description"
    t.text     "race_class_level"
    t.text     "align_size_type"
    t.text     "init"
    t.text     "senses"
    t.text     "aura"
    t.text     "ac"
    t.text     "hp"
    t.text     "fort"
    t.text     "ref"
    t.text     "will"
    t.text     "defensive_abilities"
    t.text     "dr"
    t.text     "immune"
    t.text     "resist"
    t.text     "sr"
    t.text     "weaknesses"
    t.text     "speed"
    t.text     "melee"
    t.text     "ranged"
    t.text     "space"
    t.text     "reach"
    t.text     "special_attacks"
    t.text     "spell_like_abilities"
    t.text     "spells_known"
    t.text     "spells_prepared"
    t.text     "str"
    t.text     "dex"
    t.text     "con"
    t.text     "int"
    t.text     "wis"
    t.text     "cha"
    t.text     "base_atk"
    t.text     "cmb"
    t.text     "cmd"
    t.text     "feats"
    t.text     "skills"
    t.text     "racial_modifiers"
    t.text     "languages"
    t.text     "sq"
    t.text     "env"
    t.text     "organization"
    t.text     "treasure"
    t.text     "special_abilities"
    t.text     "more_info_link"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "planes", force: :cascade do |t|
    t.text "name"
  end

  create_table "terrains", force: :cascade do |t|
    t.text "name"
  end

end
