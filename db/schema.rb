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

ActiveRecord::Schema.define(:version => 20130606173551) do

  create_table "gen_exps", :force => true do |t|
    t.decimal  "amount"
    t.date     "date"
    t.string   "method_of_payment"
    t.string   "seller"
    t.string   "purpose"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.text     "details"
    t.boolean  "reimbursable"
  end

  create_table "me_exps", :force => true do |t|
    t.decimal  "amount"
    t.date     "date"
    t.string   "venue"
    t.text     "details"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "method_of_payment"
    t.boolean  "reimbursable"
    t.string   "attendees"
  end

  create_table "travel_expenses", :force => true do |t|
    t.decimal  "amount"
    t.date     "date"
    t.string   "method_of_payment"
    t.text     "details"
    t.string   "purpose"
    t.string   "seller"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "travel_id"
    t.boolean  "reimbursable"
  end

  create_table "travels", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "destination"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "purpose"
  end

  create_table "veh_exps", :force => true do |t|
    t.decimal  "amount"
    t.date     "date"
    t.string   "car_model"
    t.string   "purpose"
    t.text     "details"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "vehicle_expenses", :force => true do |t|
    t.decimal  "amount"
    t.date     "date"
    t.string   "method_of_payment"
    t.string   "purpose"
    t.string   "seller"
    t.text     "details"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "vehicle_id"
    t.boolean  "reimbursable"
  end

  create_table "vehicles", :force => true do |t|
    t.string   "make"
    t.string   "vehicle_model"
    t.integer  "year"
    t.string   "vin"
    t.string   "reg_no"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.boolean  "business_vehicle", :default => true
  end

end
