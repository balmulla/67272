Rails.application.routes.draw do
  resources :store_users
  resources :stores
  resources :users
  resources :banks
  resources :demos, only: [:new, :create, :destroy]
  get 'demos/new', to: 'demos#new', as: :login
  get 'demos/destroy', to: 'demos#destroy', as: :logout
  root 'demos#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
