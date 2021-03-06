# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_21_194715) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "clinic_id"
    t.date "appointment_date"
    t.string "appointment_time"
    t.string "reason_for_visit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clinics", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "address_id"
    t.string "phone_number"
    t.string "website_url"
    t.decimal "latitude"
    t.decimal "longitude"
    t.boolean "new_patients"
    t.string "accept_walkin"
    t.string "limited_access"
    t.string "public_insurance"
    t.string "medicaid"
    t.string "medicare"
    t.string "private_employer_insurance"
    t.string "facility_type"
    t.string "private_insurance"
    t.boolean "child_special_needs"
    t.boolean "elderly"
    t.boolean "hiv"
    t.boolean "homeless"
    t.boolean "lgbt"
    t.boolean "intellect_disabled"
    t.boolean "physical_disabled"
    t.boolean "mental_illness"
    t.boolean "cardiology"
    t.boolean "endocrinology"
    t.boolean "general_surgery"
    t.boolean "hiv_aids"
    t.boolean "infectious_disease"
    t.boolean "nephrology"
    t.boolean "neurology"
    t.boolean "obstetrics"
    t.boolean "oncology"
    t.boolean "opthalmology"
    t.boolean "oral_surgery"
    t.boolean "orthopedic"
    t.boolean "gastroenterology"
    t.boolean "pediatrics"
    t.boolean "podiatry"
    t.boolean "pulmonary"
    t.boolean "rheumatology"
    t.boolean "reproductive_health"
    t.boolean "sti_test"
    t.boolean "urology"
    t.boolean "dentistry"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
