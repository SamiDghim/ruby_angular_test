Rails.application.routes.draw do
  get 'recipes/index'
 resources :recipes
  devise_for :users
  root to: 'application#angular'
end
