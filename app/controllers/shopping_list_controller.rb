class ShoppingListController < ApplicationController
  def index
    @inventories = Inventory.all
  end

  def create
  end

end
