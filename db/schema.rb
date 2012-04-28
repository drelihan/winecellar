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

ActiveRecord::Schema.define(:version => 20120428140206) do

  create_table "bottles", :force => true do |t|
    t.integer  "vintage"
    t.string   "label"
    t.string   "varietal"
    t.integer  "quantity"
    t.integer  "bottle_size_ml"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.float    "price_paid"
    t.string   "vineyard"
  end

  create_table "ratings", :force => true do |t|
    t.integer  "bottle_id"
    t.integer  "quantity"
    t.integer  "score"
    t.string   "who"
    t.string   "drank_with"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
