class HomeController < ApplicationController
  def index; end
  def recipes
    @recipes = Recipe.where(public: true)
  end
end
