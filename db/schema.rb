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

ActiveRecord::Schema.define(:version => 20120402033955) do

  create_table "bottlings", :force => true do |t|
    t.integer  "wine_id"
    t.string   "bottle_size"
    t.string   "warehouse_location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sku"
  end

  add_index "bottlings", ["wine_id"], :name => "index_bottlings_on_wine_id"

  create_table "inventory_withdrawal_items", :force => true do |t|
    t.integer  "inventory_withdrawal_id"
    t.integer  "bottling_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inventory_withdrawal_items", ["bottling_id"], :name => "index_inventory_withdrawal_items_on_bottling_id"
  add_index "inventory_withdrawal_items", ["inventory_withdrawal_id"], :name => "index_inventory_withdrawal_items_on_inventory_withdrawal_id"

  create_table "inventory_withdrawals", :force => true do |t|
    t.date     "date"
    t.string   "category"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "producers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wines", :force => true do |t|
    t.string   "name"
    t.integer  "vintage"
    t.integer  "producer_id"
    t.string   "appellation"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wines", ["producer_id"], :name => "index_wines_on_producer_id"

end
