class HomeController < ApplicationController
  before_action :authenticate_user!, :only => []
  def index; end

  def recipes
    @recipes = Recipe.where(public: true)
  end
end
