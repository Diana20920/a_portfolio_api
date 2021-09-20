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

ActiveRecord::Schema.define(version: 2021_09_20_055257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "region"
    t.float "total_sqft"
    t.bigint "entity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entity_id"], name: "index_portfolios_on_entity_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.boolean "spaces_available"
    t.decimal "total_dollar_value_per_sqft"
    t.bigint "portfolio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.index ["portfolio_id"], name: "index_sites_on_portfolio_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "category"
    t.boolean "vacant"
    t.float "square_footage"
    t.decimal "dollar_per_sqft"
    t.bigint "site_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["site_id"], name: "index_spaces_on_site_id"
  end

  add_foreign_key "portfolios", "entities"
  add_foreign_key "sites", "portfolios"
  add_foreign_key "spaces", "sites"
end
