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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20141029180612) do
=======
ActiveRecord::Schema.define(version: 20141029121230) do
>>>>>>> c4903fe6fd1c91b8ea40615eaaa03973e9920859

  create_table "problems", force: true do |t|
    t.text     "title"
    t.text     "text"
    t.string   "screenshot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
  create_table "solutions", force: true do |t|
    t.text     "text"
    t.string   "screenshot"
    t.integer  "upvote"
    t.integer  "problem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "solutions", ["problem_id"], name: "index_solutions_on_problem_id"

=======
>>>>>>> c4903fe6fd1c91b8ea40615eaaa03973e9920859
end
