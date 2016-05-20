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

ActiveRecord::Schema.define(version: 20160520035140) do

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.decimal  "weight"
    t.integer  "weight_rank"
    t.decimal  "run_speed"
    t.integer  "run_speed_rank"
    t.decimal  "walk_speed"
    t.integer  "walk_speed_rank"
    t.decimal  "air_speed"
    t.integer  "air_speed_rank"
    t.decimal  "fall_speed"
    t.integer  "fall_speed_rank"
    t.decimal  "fast_fall_speed"
    t.integer  "fast_fall_speed_rank"
    t.decimal  "air_acceleration"
    t.decimal  "gravity"
    t.decimal  "sh_air_time"
    t.integer  "max_jump"
    t.boolean  "wall_jump"
    t.boolean  "wall_cling"
    t.boolean  "crawl"
    t.boolean  "tether"
    t.integer  "jump_sqaut"
    t.integer  "soft_landing_lag"
    t.integer  "hard_landing_lag"
    t.integer  "fh_air_time"
    t.decimal  "patch_update"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "grabs", force: :cascade do |t|
    t.integer  "character_id"
    t.string   "name"
    t.integer  "hitbox_active_start"
    t.integer  "hitbox_active_end"
    t.integer  "first_actionable_frame"
    t.integer  "variation_of"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ground_moves", force: :cascade do |t|
    t.integer  "character_id"
    t.string   "name"
    t.integer  "hitbox_active_start"
    t.integer  "hotbox_active_end"
    t.integer  "first_actionable_frame"
    t.decimal  "base_damage"
    t.integer  "angle"
    t.integer  "base_knockback"
    t.integer  "weight_based_knockback"
    t.string   "knock"
    t.integer  "back_growth"
    t.string   "notes"
    t.decimal  "patch"
    t.integer  "variation_of"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "matches", force: :cascade do |t|
    t.string   "name"
    t.integer  "playing_as"
    t.integer  "playing_against"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string   "name"
    t.integer  "match_id"
    t.integer  "order"
    t.string   "section"
    t.string   "video_url"
    t.string   "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "role"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
