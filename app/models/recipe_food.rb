# Comment
class RecipeFood < ApplicationRecord
  belongs_to :recipe, class_name: 'Recipe'
  belongs_to :food
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  after_save :update_foods_counter, :update_foods_total_price
  before_destroy :decrement_foods_counter, :reduce_foods_total_price

  private

  def update_foods_counter
    recipe.increment!(:foods_counter)
  end

  def update_foods_total_price
    recipe.increment!(:foods_total_price, (food.price * quantity))
  end

  def reduce_foods_total_price
    recipe.decrement!(:foods_total_price, (food.price * quantity))
  end

  def decrement_foods_counter
    recipe.decrement!(:foods_counter)
  end
end
