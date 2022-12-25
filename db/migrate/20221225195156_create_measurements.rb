class CreateMeasurements < ActiveRecord::Migration[7.0]
  def change
    create_table :measurements do |t|
      t.string :sku
      t.integer :quantity
      t.references :ingredient, foreign_key: true
      t.references :recipe, foreign_key: true
      t.timestamps
    end
  end
end
