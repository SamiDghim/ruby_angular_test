Rails.application.routes.draw do
  get 'recipes/index'
  #Configure Recipe at rails routes
 resources :recipes , only: [:index]
  devise_for :users
  root to: 'application#angular'
end
