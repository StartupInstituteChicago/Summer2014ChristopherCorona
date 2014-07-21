Rails.application.routes.draw do
  root to: 'restaurants#index'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :restaurants

  resources :users, only: [:new, :create]

end

