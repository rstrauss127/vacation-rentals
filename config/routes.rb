Rails.application.routes.draw do
  resources :attractions
  resources :listings do
    resources :reservations
  end

  resources :users, only: [:new, :create]
  get '/login' => "sessions#new"
  post '/login' => 'sessions#create'
  get '/auth/facebook/callback' => 'sessions#create'

  root 'listings#index'

  get '/logout' => 'sessions#destroy'

  get '/start_date_before' => 'reservations#index'

  get '/most_reservations' => 'users#index' 
end
