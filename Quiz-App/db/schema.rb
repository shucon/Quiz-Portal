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

ActiveRecord::Schema.define(version: 20170919153305) do

  create_table "genres", force: :cascade do |t|
    t.string "genre"
    t.string "subgenre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quest_stats", force: :cascade do |t|
    t.integer "quest_id"
    t.integer "user_id"
    t.integer "stat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subgenre"
    t.string "genre"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.string "option1"
    t.string "option2"
    t.string "option3"
    t.string "option4"
    t.string "genre"
    t.integer "a1"
    t.integer "a2"
    t.integer "a3"
    t.integer "a4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subgenre"
  end

  create_table "stats", force: :cascade do |t|
    t.integer "userid"
    t.integer "questionid"
    t.integer "stat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_stats", force: :cascade do |t|
    t.integer "user_id"
    t.string "genre"
    t.string "subgenre"
    t.integer "last_ques"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "highest_score"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "admin_status"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
