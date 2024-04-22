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

ActiveRecord::Schema[7.1].define(version: 2024_04_19_071459) do
  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.integer "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_areas_on_city_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "state_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "food_items", force: :cascade do |t|
    t.integer "price"
    t.string "description"
    t.integer "restaurant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id", null: false
    t.string "name"
    t.index ["category_id"], name: "index_food_items_on_category_id"
    t.index ["restaurant_id"], name: "index_food_items_on_restaurant_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer "quantity"
    t.integer "price"
    t.integer "user_id", null: false
    t.integer "cart_id", null: false
    t.integer "food_item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_line_items_on_cart_id"
    t.index ["food_item_id"], name: "index_line_items_on_food_item_id"
    t.index ["user_id"], name: "index_line_items_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total_amount"
    t.string "address"
    t.string "payment_method"
    t.integer "user_id", null: false
    t.integer "cart_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_status"
    t.index ["cart_id"], name: "index_orders_on_cart_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.time "open_time"
    t.time "close_time"
    t.string "address"
    t.integer "city_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "area_id", null: false
    t.index ["area_id"], name: "index_restaurants_on_area_id"
    t.index ["city_id"], name: "index_restaurants_on_city_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "areas", "cities"
  add_foreign_key "carts", "users"
  add_foreign_key "cities", "states"
  add_foreign_key "food_items", "categories"
  add_foreign_key "food_items", "restaurants"
  add_foreign_key "line_items", "carts"
  add_foreign_key "line_items", "food_items"
  add_foreign_key "line_items", "users"
  add_foreign_key "orders", "carts"
  add_foreign_key "orders", "users"
  add_foreign_key "restaurants", "areas"
  add_foreign_key "restaurants", "cities"
end
