Rails.application.routes.draw do
  devise_for :users 
  resources :adsses 
  #resources :ads
  get 'home/about'
  root 'adsses#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
