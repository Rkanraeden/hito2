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

ActiveRecord::Schema[7.0].define(version: 2022_06_02_044046) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "communes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "rut_client"
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "commune"
    t.string "telphone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "Id_prod"
    t.integer "code"
    t.string "brand"
    t.string "category"
    t.string "description"
    t.integer "cost_price"
    t.integer "sale_price"
    t.integer "stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "Id_prod"
    t.integer "code"
    t.string "brand"
    t.string "category"
    t.string "description"
    t.integer "cost_price"
    t.integer "stock"
    t.integer "sale_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.string "rut_supp"
    t.string "name_supplier"
    t.string "type_doc"
    t.string "prod_id"
    t.string "prod_name"
    t.integer "units"
    t.integer "cost_price"
    t.integer "net_price"
    t.integer "tax"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.datetime "date"
    t.string "type_doc"
    t.string "num_doc"
    t.string "vendor"
    t.string "name_client"
    t.string "address"
    t.string "commune"
    t.string "region"
    t.string "category"
    t.string "prod_id"
    t.string "prod_desc"
    t.integer "units"
    t.integer "cost_price"
    t.integer "sale_price"
    t.integer "net_price"
    t.integer "tax"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "rut"
    t.string "name"
    t.string "activity"
    t.string "address"
    t.string "commune"
    t.string "region"
    t.string "contact"
    t.string "telephone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_documents", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
