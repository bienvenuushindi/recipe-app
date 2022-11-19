# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get  '/public_recipes', to: 'home#recipes', as: 'public_recipes'
  resources :shopping_list, except: [:show]
  get '/my_shopping_list', to: 'shopping_list#show', as: 'my_shopping_list'
  resources :inventory_foods
  resources :inventories
  resources :recipe_foods, except: [:index]
  resources :recipes
  resources :foods
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
