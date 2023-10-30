Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :new, :create, :destroy]
  root 'users#index'
  
  resources :tweets
  # Defines the root path route ("/")
  # root "articles#index"
end
