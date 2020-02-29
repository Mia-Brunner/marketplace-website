Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  # get 'welcome/index'
  # root to: 'welcome#index'
  resources :listings
  resources :users
  root to: 'listings#index'

  match '/users', to: 'users#index', via: 'get'
  match '/users/:id', to: 'users#show', via: 'get'
end
