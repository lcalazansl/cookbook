class AddAvgShelfLifeToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :avg_shelf_life, :integer
  end
end
