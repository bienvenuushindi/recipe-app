# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get  '/public_recipes', to: 'home#recipes', as: 'public_recipes'
  resources :shopping_list
  resources :inventory_foods
  resources :inventories
  resources :recipe_foods
  resources :recipes
  resources :foods
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
