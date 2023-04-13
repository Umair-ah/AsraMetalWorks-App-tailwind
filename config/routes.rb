Rails.application.routes.draw do
  devise_for :admins

  root "statics#home"

  resources :products
  resources :racks, only: :index
  resources :offices, only: :index
  resources :schools, only: :index
end
