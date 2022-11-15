# Comment
class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
end
