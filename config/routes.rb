Rails.application.routes.draw do
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  resources :users
  resources :tweets
  root 'tweets#index'
end

