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

ActiveRecord::Schema.define(:version => 20120413160259) do

  create_table "archives", :force => true do |t|
    t.boolean  "complete"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "archives", ["complete"], :name => "index_archives_on_complete"

  create_table "questions", :force => true do |t|
    t.string   "content"
    t.boolean  "replied_to"
    t.integer  "archive_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "questions", ["archive_id"], :name => "index_questions_on_archive_id"
  add_index "questions", ["replied_to"], :name => "index_questions_on_replied_to"

end
