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

ActiveRecord::Schema.define(version: 20200330115757) do

  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",        null: false
    t.integer  "attribution", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.string   "postcode",   null: false
    t.string   "address",    null: false
    t.integer  "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                         null: false
    t.string   "postcode",                     null: false
    t.string   "address",                      null: false
    t.string   "bank",                         null: false
    t.string   "account_type",                 null: false
    t.string   "account_number",               null: false
    t.text     "logo",           limit: 65535
    t.text     "seal",           limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "depertments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.integer  "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.integer  "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "number",                            null: false
    t.string   "company_name",                      null: false
    t.string   "postcode",                          null: false
    t.string   "address",                           null: false
    t.string   "bank",                              null: false
    t.string   "bank_account_type",                 null: false
    t.string   "bank_account_number",               null: false
    t.text     "logo",                limit: 65535
    t.text     "seal",                limit: 65535
    t.string   "date",                              null: false
    t.string   "client_name",                       null: false
    t.string   "client_address",                    null: false
    t.integer  "amount",                            null: false
    t.string   "payment_deadline",                  null: false
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "statements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "invoice_id", null: false
    t.integer  "number",     null: false
    t.integer  "event_id",   null: false
    t.string   "text",       null: false
    t.integer  "unit_price", null: false
    t.integer  "quantity",   null: false
    t.integer  "tax_rate",   null: false
    t.integer  "sales_tax",  null: false
    t.integer  "sub_total",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
