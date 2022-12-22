class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :instructions
      t.integer :rating

      t.timestamps
    end
  end
end
