# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140916180723) do

  create_table "categories", force: true do |t|
    t.string "name"
  end

  create_table "color_lists", force: true do |t|
    t.string   "name"
    t.string   "hex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merks", force: true do |t|
    t.string "name"
  end

  create_table "product_colors", force: true do |t|
    t.integer  "product_id"
    t.integer  "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_discounts", force: true do |t|
    t.integer  "discount"
    t.integer  "product_id"
    t.integer  "discount_price"
    t.datetime "expires_in"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_genders", force: true do |t|
    t.integer  "gender_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_sizes", force: true do |t|
    t.integer  "product_id"
    t.integer  "size_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string  "code"
    t.string  "name"
    t.string  "keywords"
    t.string  "short_description"
    t.text    "description"
    t.boolean "active"
    t.integer "height"
    t.integer "width"
    t.integer "weight"
    t.integer "merk_id"
    t.integer "sub_category_id"
    t.integer "unit_price"
    t.integer "unit_cost"
    t.integer "tax"
    t.string  "texture"
  end

  create_table "reviews", force: true do |t|
    t.integer  "product_id"
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "rate"
    t.boolean  "like"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sizes", force: true do |t|
    t.integer  "name"
    t.integer  "height"
    t.integer  "width"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_categories", force: true do |t|
    t.string  "name"
    t.integer "category_id"
  end

end
