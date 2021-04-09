Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show], param: :slug, path: '/user'

  resources :carts
  resources :line_items
  resources :products, only: %i[index show]

  get 'checkout', to: 'checkouts#show'
  get 'billing', to: 'billing#show'

  root 'products#index'
end
