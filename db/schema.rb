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

ActiveRecord::Schema[7.0].define(version: 2022_12_25_195156) do
  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "storage"
    t.integer "avrg_shelf_life"
    t.string "allergen_group"
    t.string "diet_group"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.string "sku"
    t.integer "quantity"
    t.integer "ingredient_id"
    t.integer "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_measurements_on_ingredient_id"
    t.index ["recipe_id"], name: "index_measurements_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "instructions"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "avg_shelf_life"
    t.string "author"
    t.string "src"
    t.string "isbn"
  end

  add_foreign_key "measurements", "ingredients"
  add_foreign_key "measurements", "recipes"
end
