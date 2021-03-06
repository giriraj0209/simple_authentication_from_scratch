Rails.application.routes.draw do
  get "signup", to: 'users#new', as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  
  resources :users
  resources :sessions
  resources :password_resets
  
  get 'roots', to: 'users#home'
  root "sessions#new"
  end
