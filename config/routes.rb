Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  resources :users, only: [:show], param: :slug, path: "/user"

  root to: 'static#home'
end
