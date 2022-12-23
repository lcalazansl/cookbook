class AddAuthorSrcAndIsbnToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :author, :string
    add_column :recipes, :src, :string
    add_column :recipes, :isbn, :string
  end
end
