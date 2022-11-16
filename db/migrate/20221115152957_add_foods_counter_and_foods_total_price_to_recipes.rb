class AddFoodsCounterAndFoodsTotalPriceToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :foods_counter, :integer, default: 0
    add_column :recipes, :foods_total_price, :integer, default: 0
  end
end
