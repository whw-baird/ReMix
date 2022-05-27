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

ActiveRecord::Schema.define(version: 2022_05_27_163055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "plpgsql"

  create_table "barflies", force: :cascade do |t|
    t.bigint "bar_id", null: false
    t.bigint "user_id", null: false
    t.boolean "is_bartender", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bar_id"], name: "index_barflies_on_bar_id"
    t.index ["user_id"], name: "index_barflies_on_user_id"
  end

  create_table "bars", force: :cascade do |t|
    t.string "bar_name", default: "Hole in the Wall", null: false
    t.bigint "owner_id", null: false
    t.string "about"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_bars_on_owner_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cocktail_comments", force: :cascade do |t|
    t.bigint "cocktail_id", null: false
    t.bigint "user_id", null: false
    t.string "body", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cocktail_id"], name: "index_cocktail_comments_on_cocktail_id"
    t.index ["user_id"], name: "index_cocktail_comments_on_user_id"
  end

  create_table "cocktail_ingredients", force: :cascade do |t|
    t.bigint "cocktail_id", null: false
    t.bigint "ingredient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cocktail_id"], name: "index_cocktail_ingredients_on_cocktail_id"
    t.index ["ingredient_id"], name: "index_cocktail_ingredients_on_ingredient_id"
  end

  create_table "cocktails", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "bar_id"
    t.string "name", default: "My Cocktail", null: false
    t.string "recipe"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bar_id"], name: "index_cocktails_on_bar_id"
    t.index ["user_id"], name: "index_cocktails_on_user_id"
  end

  create_table "follows", force: :cascade do |t|
    t.bigint "leader_id", null: false
    t.bigint "follower_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["follower_id"], name: "index_follows_on_follower_id"
    t.index ["leader_id"], name: "index_follows_on_leader_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_ingredients_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.citext "username", null: false
    t.string "bio"
    t.boolean "private", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "barflies", "bars"
  add_foreign_key "barflies", "users"
  add_foreign_key "bars", "users", column: "owner_id"
  add_foreign_key "cocktail_comments", "cocktails"
  add_foreign_key "cocktail_comments", "users"
  add_foreign_key "cocktail_ingredients", "cocktails"
  add_foreign_key "cocktail_ingredients", "ingredients"
  add_foreign_key "cocktails", "bars"
  add_foreign_key "cocktails", "users"
  add_foreign_key "follows", "users", column: "follower_id"
  add_foreign_key "follows", "users", column: "leader_id"
  add_foreign_key "ingredients", "categories"
end
