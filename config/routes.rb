Rails.application.routes.draw do
  devise_for :admins, :skip => [:registrations]

  root "statics#home"

  resources :products
  resources :racks, only: :index
  resources :offices, only: :index
  resources :schools, only: :index
end
