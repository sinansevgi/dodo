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

ActiveRecord::Schema[7.0].define(version: 2022_12_27_000029) do
  create_table "gorevs", force: :cascade do |t|
    t.string "isim"
    t.boolean "durum", default: false
    t.text "notlar", default: ""
    t.integer "oncelik", default: 0
    t.date "sontarih", default: "2022-12-26"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "kullanici_id", default: 0, null: false
    t.integer "kategori", default: 0
    t.index ["kullanici_id"], name: "index_gorevs_on_kullanici_id"
  end

  create_table "kullanicis", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "isim"
    t.index ["email"], name: "index_kullanicis_on_email", unique: true
    t.index ["reset_password_token"], name: "index_kullanicis_on_reset_password_token", unique: true
  end

  add_foreign_key "gorevs", "kullanicis"
end
