Rails.application.routes.draw do
  root to: 'cats#index'
  resources :cats
  get 'users/new', to: "users#new"
  post 'users', to: 'users#create'
end
