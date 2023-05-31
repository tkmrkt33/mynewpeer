Rails.application.routes.draw do
  resources :uploads

  root : "home#index"

  devise_for :users
  root to: "home#index"
  resources :users
  resources :gears


end
