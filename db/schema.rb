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

ActiveRecord::Schema.define(version: 2019_06_07_140211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_proposals", force: :cascade do |t|
    t.bigint "quotation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quotation_id"], name: "index_business_proposals_on_quotation_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "linkedin"
    t.string "category"
    t.string "function"
    t.string "company_name"
    t.bigint "company_SIRET"
    t.string "company_picture"
    t.text "company_address"
    t.string "activity_sector"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "equipments", force: :cascade do |t|
    t.string "category"
    t.text "description"
    t.integer "cost"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mission_id"
  end

  create_table "missions", force: :cascade do |t|
    t.text "description"
    t.integer "staff_quantity"
    t.string "staff_planning"
    t.integer "training_quantity"
    t.integer "equipment_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quotation_id"
    t.integer "staff_id"
  end

  create_table "opportunities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "question_1"
    t.text "question_2"
    t.text "question_3"
    t.string "status"
    t.bigint "client_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_opportunities_on_client_id"
    t.index ["user_id"], name: "index_opportunities_on_user_id"
  end

  create_table "quotations", force: :cascade do |t|
    t.integer "margin_rate"
    t.integer "selling_price"
    t.date "starting_date"
    t.date "end_date"
    t.bigint "opportunity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["opportunity_id"], name: "index_quotations_on_opportunity_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "category"
    t.text "description"
    t.string "picture"
    t.float "worked_time_hourly_rate"
    t.float "closed_time_hourly_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.string "category"
    t.text "description"
    t.integer "educational_cost"
    t.integer "duration"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mission_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "linkedin"
    t.string "avatar"
    t.string "category"
    t.string "function"
    t.string "company"
    t.integer "annual_objective"
    t.integer "objective_done"
    t.bigint "manager_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["manager_id"], name: "index_users_on_manager_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "business_proposals", "quotations"
  add_foreign_key "clients", "users"
  add_foreign_key "opportunities", "clients"
  add_foreign_key "opportunities", "users"
  add_foreign_key "quotations", "opportunities"
  add_foreign_key "users", "users", column: "manager_id"
end
