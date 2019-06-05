Rails.application.routes.draw do
  get 'site/index' #do i need this?
  root 'site#index'
end
