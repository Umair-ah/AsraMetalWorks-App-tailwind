Rails.application.routes.draw do
  devise_for :admins

  root "statics#home"

  resources :products
end
