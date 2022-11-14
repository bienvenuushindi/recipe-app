# frozen_string_literal: true

json.array! @foods, partial: 'foods/food', as: :food
