Rails.application.routes.draw do

  devise_for :users
  root to: 'events#index'

  resources :events

  resources :users, only: [:new, :create, :edit, :show, :update]
  get "/signup" => "users#new", as: "signup"
  get "/profile" => "users#show", as: "profile"

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"

end
