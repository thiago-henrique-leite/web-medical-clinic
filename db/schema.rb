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

ActiveRecord::Schema.define(version: 2022_01_22_194030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anamnesis", force: :cascade do |t|
    t.bigint "occupation_area_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["occupation_area_id"], name: "index_anamnesis_on_occupation_area_id"
  end

  create_table "anamnesis_consultations", force: :cascade do |t|
    t.bigint "anamnesi_id", null: false
    t.bigint "consultation_id", null: false
    t.text "answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["anamnesi_id"], name: "index_anamnesis_consultations_on_anamnesi_id"
    t.index ["consultation_id"], name: "index_anamnesis_consultations_on_consultation_id"
  end

  create_table "consultations", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "doctor_id", null: false
    t.date "consultation_date"
    t.string "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_consultations_on_doctor_id"
    t.index ["patient_id"], name: "index_consultations_on_patient_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "crm"
    t.bigint "occupation_area_id", null: false
    t.string "name"
    t.string "cpf"
    t.date "birthday"
    t.string "phone"
    t.index ["email"], name: "index_doctors_on_email", unique: true
    t.index ["occupation_area_id"], name: "index_doctors_on_occupation_area_id"
    t.index ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true
  end

  create_table "occupation_areas", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "health_insurance"
    t.string "card_number"
    t.string "marital_status"
    t.string "gender"
    t.string "profession"
    t.string "zipcode"
    t.string "address"
    t.string "state"
    t.string "neighborhood"
    t.string "city"
    t.integer "address_number"
    t.string "name"
    t.string "cpf"
    t.date "birthday"
    t.string "phone"
    t.index ["email"], name: "index_patients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

  create_table "prescriptions", force: :cascade do |t|
    t.bigint "consultation_id", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consultation_id"], name: "index_prescriptions_on_consultation_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "description"
    t.bigint "anamnesi_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["anamnesi_id"], name: "index_questions_on_anamnesi_id"
  end

  add_foreign_key "anamnesis", "occupation_areas"
  add_foreign_key "anamnesis_consultations", "anamnesis"
  add_foreign_key "anamnesis_consultations", "consultations"
  add_foreign_key "consultations", "doctors"
  add_foreign_key "consultations", "patients"
  add_foreign_key "doctors", "occupation_areas"
  add_foreign_key "prescriptions", "consultations"
  add_foreign_key "questions", "anamnesis"
end
