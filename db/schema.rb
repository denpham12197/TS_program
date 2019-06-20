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

ActiveRecord::Schema.define(version: 2019_06_20_165524) do

  create_table "course_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_subjects", force: :cascade do |t|
    t.integer "Course_id"
    t.integer "Subject_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Course_id"], name: "index_course_subjects_on_Course_id"
    t.index ["Subject_id"], name: "index_course_subjects_on_Subject_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "Course_categorie_id"
    t.string "name"
    t.string "detail"
    t.date "start_date"
    t.string "end_date"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Course_categorie_id"], name: "index_courses_on_Course_categorie_id"
  end

  create_table "elements", force: :cascade do |t|
    t.string "name"
    t.integer "Course_id"
    t.integer "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Course_id"], name: "index_elements_on_Course_id"
    t.index ["User_id"], name: "index_elements_on_User_id"
  end

  create_table "reports", force: :cascade do |t|
    t.integer "User_id"
    t.string "title"
    t.string "content"
    t.date "date_create"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_reports_on_User_id"
  end

  create_table "subject_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.integer "Subject_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Subject_category_id"], name: "index_subjects_on_Subject_category_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.integer "Subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Subject_id"], name: "index_tasks_on_Subject_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "address"
    t.string "phone_number"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
  end

end
