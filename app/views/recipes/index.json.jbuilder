# frozen_string_literal: true

json.array! @recipes, partial: 'recipes/recipe', as: :recipe
