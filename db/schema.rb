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

ActiveRecord::Schema.define(:version => 20120218161936) do

  create_table "applications", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "postal_code"
    t.integer  "regon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients_applications", :force => true do |t|
    t.date     "start_date"
    t.date     "expire_date"
    t.string   "license_type"
    t.integer  "number_of_computers"
    t.string   "product_key"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
    t.integer  "application_id"
  end

  create_table "contact_people", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "position"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  create_table "emails", :force => true do |t|
    t.string   "email_address"
    t.string   "title"
    t.text     "msg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password"
    t.boolean  "admin",             :default => false
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

end
