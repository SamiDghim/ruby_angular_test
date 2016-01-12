Rails.application.routes.draw do
 
  #Configure Recipe at rails routes
  resources :recipes  
  resources :ingredient  
   
  resources :user
  get '404', :to => 'application#not_found'
  devise_for :users
  root to: 'application#angular'
end
