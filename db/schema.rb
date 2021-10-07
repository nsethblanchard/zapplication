# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_07_175242) do

  create_table "applications", force: :cascade do |t|
    t.string "position_title"
    t.boolean "applied", default: true, null: false
    t.boolean "rejected", default: false, null: false
    t.boolean "followed_up", default: false, null: false
    t.string "followed_up_info"
    t.boolean "linked_in_connected", default: false, null: false
    t.boolean "former_flatiron_alum", default: false, null: false
    t.string "remote_or"
    t.string "contact_name"
    t.string "contact_title"
    t.string "contact_info"
    t.date "date_applied"
    t.string "job_description"
    t.string "salary"
    t.integer "User_id", null: false
    t.integer "Company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Company_id"], name: "index_applications_on_Company_id"
    t.index ["User_id"], name: "index_applications_on_User_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "city_state"
    t.integer "company_size"
    t.string "industry"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.integer "company_id", null: false
    t.string "title"
    t.text "phone_email"
    t.date "date_of_last_contact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_contacts_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "email"
    t.integer "age"
    t.boolean "currently_working"
    t.string "url_pic"
    t.string "job_goals"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "unique_emails", unique: true
  end

  add_foreign_key "contacts", "companies"
end
