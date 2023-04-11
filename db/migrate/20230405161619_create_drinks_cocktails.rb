class CreateDrinksCocktails < ActiveRecord::Migration[7.0]
  def change
    create_table :drinks_cocktails do |t|
      t.integer "drink_id", null: false
      t.integer "cocktail_id", null: false
      t.integer "quantity", null: false
      
      t.timestamps
    end
  end
end
