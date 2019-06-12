Rails.application.routes.draw do
  resources :listings do
    resources :reservations
  end


  get '/login' => "sessions#new"
  post '/login' => 'sessions#create'
  get '/auth/facebook/callback' => 'sessions#create'

  root 'listings#index'

  get '/logout' => 'sessions#destroy'
end
