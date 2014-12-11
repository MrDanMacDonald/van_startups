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

ActiveRecord::Schema.define(version: 20141208010216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "size"
    t.string   "website"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "angellist_company_id"
    t.string   "thumbnail"
    t.text     "description"
    t.text     "concept"
    t.json     "markets"
  end

  add_index "companies", ["angellist_company_id"], name: "index_companies_on_angellist_company_id", using: :btree

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.integer  "salary"
    t.string   "equity"
    t.string   "job_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.integer  "angellist_job_id"
  end

  add_index "jobs", ["angellist_job_id"], name: "index_jobs_on_angellist_job_id", using: :btree
  add_index "jobs", ["company_id"], name: "index_jobs_on_company_id", using: :btree

end
