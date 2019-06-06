Rails.application.routes.draw do
  resources :listings do
    resources :features
  end
  root 'listings#index'
end
