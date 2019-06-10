Rails.application.routes.draw do
  resources :listings do
    resources :reservations, only: [:new, :create]
  end

  resources :users, only: [:new, :create]
  get '/login' => "sessions#new"
  post '/login' => 'sessions#create'

  root 'listings#index'

  get '/logout' => 'sessions#destroy'
end
