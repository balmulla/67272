Rails.application.routes.draw do
  resources :store_users
  resources :stores
  resources :users
  resources :banks
  resources :demos, only: [:new, :create, :destroy]
  root 'demos#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
