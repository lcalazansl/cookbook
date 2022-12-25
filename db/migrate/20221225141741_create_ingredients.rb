class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :storage
      t.integer :avrg_shelf_life
      t.string :allergen_group
      t.string :diet_group
      t.string :category

      t.timestamps
    end
  end
end
