Rails.application.routes.draw do
  resources :users
  resources :pages, only: [:show]
  root 'users#index'

end
