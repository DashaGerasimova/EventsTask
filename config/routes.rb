Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'

  resources :events

  get '/profile' => 'users#profile', as: 'profile'
end
