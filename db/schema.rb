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

ActiveRecord::Schema.define(version: 20170331210153) do

  create_table "listings", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "name",                                                 null: false
    t.string   "short_desc"
    t.text     "long_desc"
    t.boolean  "visible",                              default: false
    t.decimal  "orig_price",  precision: 12, scale: 2, default: "0.0"
    t.decimal  "curr_price",  precision: 12, scale: 2, default: "0.0"
    t.string   "image_loc"
    t.integer  "position"
    t.boolean  "featured",                             default: false
    t.boolean  "new",                                  default: false
    t.boolean  "recommended",                          default: false
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.index ["product_id"], name: "index_listings_on_product_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "listing_id"
    t.integer  "order_id"
    t.decimal  "unit_price",  precision: 12, scale: 2
    t.integer  "quantity"
    t.decimal  "total_price", precision: 12, scale: 2
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["listing_id"], name: "index_order_items_on_listing_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.decimal  "subtotal",   precision: 12, scale: 2
    t.decimal  "tax",        precision: 12, scale: 2
    t.decimal  "shipping",   precision: 12, scale: 2
    t.decimal  "total",      precision: 12, scale: 2
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",                        null: false
    t.text     "description"
    t.string   "category"
    t.string   "icon_path"
    t.integer  "position"
    t.boolean  "visible",     default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "listing_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "first_name",  limit: 25
    t.string   "last_name",   limit: 50
    t.string   "title"
    t.string   "email",       limit: 100, default: "", null: false
    t.text     "description"
    t.string   "cell_phone"
    t.string   "google"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "linkedin"
    t.integer  "position"
    t.string   "avatar_loc"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin_role",             default: false
    t.boolean  "user_role",              default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
