Rails.application.routes.draw do
  get 'recipes/index'
  get 'ingredients/index'

  #Configure Recipe at rails routes
  resources :recipes
  resources :ingredient
  resources :user

  devise_for :users
  root to: 'application#angular'
end
