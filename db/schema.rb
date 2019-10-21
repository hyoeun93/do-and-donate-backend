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

ActiveRecord::Schema.define(version: 2019_10_21_035931) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challengecomments", force: :cascade do |t|
    t.integer "challenge_id"
    t.text "content"
  end

  create_table "challenges", force: :cascade do |t|
    t.string "title"
    t.integer "money_pot"
    t.integer "payout"
    t.string "img_url"
    t.text "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "donor_id"
  end

  create_table "charities", force: :cascade do |t|
    t.string "name"
    t.string "web_address"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_challenge_id"
    t.text "content"
  end

  create_table "donors", force: :cascade do |t|
    t.string "name"
    t.string "donor_img_url"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "filename"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_challenge_id"
  end

  create_table "user_challenges", force: :cascade do |t|
    t.integer "user_id"
    t.integer "challenge_id"
    t.integer "charity_id"
    t.datetime "datetime"
    t.string "photo"
    t.string "title"
    t.boolean "completed"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
  end

end
