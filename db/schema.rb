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

ActiveRecord::Schema.define(version: 2021_12_06_161956) do

  create_table "schedules", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "calendarId"
    t.string "title"
    t.string "body"
    t.string "start"
    t.string "end"
    t.integer "goingDuration"
    t.integer "comingDuration"
    t.boolean "isAllDay"
    t.string "category"
    t.string "dueDateClass"
    t.string "location"
    t.string "recurrenceRule"
    t.boolean "isPending"
    t.boolean "isFocused"
    t.boolean "isVisible"
    t.boolean "isReadOnly"
    t.boolean "isPrivate"
    t.string "color"
    t.string "bgColor"
    t.string "dragBgColor"
    t.string "borderColor"
    t.string "customStyle"
    t.string "state"
    t.integer "created_user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", id: :integer, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "name", null: false
    t.text "email", null: false
    t.string "password_digest", null: false
    t.string "profile", null: false
    t.string "role", limit: 1, null: false
    t.string "phone", limit: 20
    t.string "address"
    t.date "dob"
    t.integer "create_user_id", null: false
    t.integer "updated_user_id", null: false
    t.integer "deleted_user_id"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
