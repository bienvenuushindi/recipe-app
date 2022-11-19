class ShoppingListController < ApplicationController
  def index
    @inventories = Inventory.all
  end

  def create
    redirect_to "#{my_shopping_list_url}?recipe_id=#{params[:recipe_id]}&inventory_id=#{params[:inventory][:id]}"
  end

  def show
    @recipe = Recipe.find(params[:recipe_id])
    @inventory = Inventory.find(params[:inventory_id])
    # @inventory_food = InventoryFood.all
    # @total_price = price_list
  end

  def price_list
    list = []
    @inventory_food.each do |i|
      list.push(i.food.price * i.quantity)
    end
    list.sum
  end
end
