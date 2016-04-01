Rails.application.routes.draw do
  resources :users, only: [:index]
  root 'users#index'
  get "/pages/:about" => "pages#about"
  get "/pages/:volunteer" => "pages#volunteer" 
end
