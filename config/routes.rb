Rails.application.routes.draw do
  resources :listings do
    resources :features
  end
  resources :users, only: [:new, :create]
  root 'listings#index'
end
