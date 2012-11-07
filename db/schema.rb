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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121107145436) do

  create_table "actions", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "duedate"
    t.integer  "goal_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "actions", ["goal_id"], :name => "index_actions_on_goal_id"

  create_table "goals", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "strategy_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "goals", ["strategy_id"], :name => "index_goals_on_strategy_id"

  create_table "strategies", :force => true do |t|
    t.string   "title"
    t.text     "vision"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "duedate"
    t.integer  "goal_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "tasks", ["goal_id"], :name => "index_tasks_on_goal_id"

end
