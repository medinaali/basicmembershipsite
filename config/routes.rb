Rails.application.routes.draw do
  resources :ideas
  resources :platforms
  resources :roles
  resources :users
  root to: 'visitors#index'
end
