Rails.application.routes.draw do
  root to: 'restaurants#index'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/dashboard5', to: 'owners#dashboard'

  resources :restaurants do
    resources :reservations
  end

  resources :users, only: [:new, :create]

  resources :categories, only: [:new, :create, :show]

end

