class ShoppingListController < ApplicationController
  def new
    @inventories = Inventory.all
  end
end
