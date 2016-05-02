Rails.application.routes.draw do
  resources :users, only: [:index, :create]
  resources :contacts
  root 'users#index'
  get "/pages/:about" => "pages#about"
end
