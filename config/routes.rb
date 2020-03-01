Rails.application.routes.draw do
  devise_for :views
  #devise_for :users
  devise_for :users, controllers: { registrations: "registrations" }

  # get 'welcome/index'
  # root to: 'welcome#index'
  resources :users
  resources :profiles
  resources :listings
  root to: 'listings#index'

  match '/users', to: 'users#index', via: 'get'
  match '/users/:id', to: 'users#show', via: 'get'
  match '/profiles', to: 'profiles#index', via: 'get'
  match '/profiles/:id', to: 'profiles#show', via: 'get'

end
 