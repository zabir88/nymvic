Rails.application.routes.draw do
  resources :users
  root 'users#index'
  get "/pages/:about" => "pages#about" 
  get "/pages/:contact" => "pages#contact"
end
