Rails.application.routes.draw do
  resources :users, only: [:index, :create]
  root 'users#index'
  get "/pages/:about" => "pages#about"
  get "/pages/:contactus" => "pages#contactus" 
end
