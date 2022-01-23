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

ActiveRecord::Schema.define(version: 2022_01_23_115558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auto_collections", force: :cascade do |t|
    t.integer "shop_id"
    t.string "layout"
    t.string "close"
    t.string "atc"
    t.string "show_title"
    t.string "show_price"
    t.string "show_image"
    t.string "variant_price"
    t.string "compare_price"
    t.string "quantity_select"
    t.string "has_discount"
    t.string "discount_code"
    t.string "to_checkout"
    t.datetime "date"
    t.string "status"
    t.string "title"
    t.string "text"
    t.string "same_vendor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "condition_blocks", force: :cascade do |t|
    t.integer "offer_id"
    t.text "rule"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.text "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custom_field_choices", force: :cascade do |t|
    t.integer "custom_field_id"
    t.integer "offer_id"
    t.integer "product_id"
    t.string "price"
    t.string "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custom_fields", force: :cascade do |t|
    t.integer "offer_id"
    t.integer "product_id"
    t.string "field_type"
    t.string "name"
    t.string "placeholder"
    t.string "price"
    t.string "required"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "shop_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "helps", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "offer_conditions", force: :cascade do |t|
    t.integer "offer_id"
    t.integer "block_id"
    t.integer "condition_id"
    t.string "quantity"
    t.string "level"
    t.string "content"
    t.integer "product_id"
    t.integer "variant_id"
    t.string "amount"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "offer_products", force: :cascade do |t|
    t.integer "offer_id"
    t.integer "shop_id"
    t.string "text"
    t.string "atc"
    t.string "show_title"
    t.string "show_price"
    t.string "show_image"
    t.string "variant_price"
    t.string "compare_price"
    t.string "linked"
    t.string "quantity_select"
    t.string "ab_test"
    t.string "ab_text"
    t.string "ab_atc"
    t.string "replacement_product"
    t.string "replacement_variant"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "offer_variants", force: :cascade do |t|
    t.integer "offer_id"
    t.string "product"
    t.string "variant"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer "shop_id"
    t.datetime "date"
    t.string "title"
    t.string "scheme"
    t.string "stop_show"
    t.string "layout"
    t.string "required_checkout"
    t.string "has_discount"
    t.string "discount_code"
    t.string "general_block_rule"
    t.string "to_checkout"
    t.string "auto_add"
    t.string "status"
    t.string "text"
    t.string "atc"
    t.string "close"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "settings", force: :cascade do |t|
    t.integer "shop_id"
    t.string "cart_location"
    t.string "cart_position"
    t.string "drawer_location"
    t.string "drawer_position"
    t.string "refresh_state"
    t.string "drawer_refresh"
    t.string "layout_bg"
    t.string "layout_color"
    t.string "layout_font"
    t.string "layout_size"
    t.string "layout_mt"
    t.string "layout_mb"
    t.string "offer_radius"
    t.string "offer_bs"
    t.string "offer_bc"
    t.string "offer_border"
    t.string "button_bg"
    t.string "button_color"
    t.string "button_font"
    t.string "button_size"
    t.string "button_mt"
    t.string "button_mb"
    t.string "button_radius"
    t.string "button_bs"
    t.string "button_bc"
    t.string "button_border"
    t.string "image_size"
    t.string "image_radius"
    t.string "image_bs"
    t.string "image_bc"
    t.string "image_border"
    t.string "text_color"
    t.string "text_font"
    t.string "text_size"
    t.string "title_color"
    t.string "title_font"
    t.string "title_size"
    t.string "price_color"
    t.string "c_price_color"
    t.string "price_font"
    t.string "price_size"
    t.string "c_price_size"
    t.text "override"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "shopify_domain", null: false
    t.string "shopify_token", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "access_scopes"
    t.integer "has_trial"
    t.bigint "shopify_id"
    t.string "email"
    t.string "timezone"
    t.string "iana_timezone"
    t.datetime "installed_at"
    t.datetime "activated_at"
    t.datetime "frozen_at"
    t.datetime "uninstalled_at"
    t.text "bill_type", default: "RECURRING"
    t.text "plan_name"
    t.text "plan_price"
    t.text "bill_interval"
    t.text "capped_amount"
    t.text "terms"
    t.integer "trial_days"
    t.text "test"
    t.text "on_install"
    t.text "uninstalled_on"
    t.text "shop_owner"
    t.text "plan_display_name"
    t.text "customer_email"
    t.text "domain"
    t.text "partner"
    t.text "language"
    t.index ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true
  end

  create_table "stats", force: :cascade do |t|
    t.string "date"
    t.integer "shop_id"
    t.integer "offer_id"
    t.string "product"
    t.string "variant"
    t.string "quantity"
    t.string "ip"
    t.string "country"
    t.string "type"
    t.string "action"
    t.string "page"
    t.string "position_on_page"
    t.string "device"
    t.string "browser"
    t.string "cart_items"
    t.string "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
