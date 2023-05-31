Rails.application.routes.draw do
  resources :uploads
  devise_for :users
  resources :users
  resources :gears
  root "home#index"
end
