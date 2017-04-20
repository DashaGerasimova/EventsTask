Rails.application.routes.draw do

  root to: 'events#index'

  resources :sessions, only: [:new, :destroy, :create]

  resources :events

  resources :users, only: [:new, :create, :edit, :show, :update]
  get "/profile" => "users#show"

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"

end
