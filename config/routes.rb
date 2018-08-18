Rails.application.routes.draw do
  root 'homes#index'
  post 'operators/second_create'
  get 'homes/second_new'
  resources :homes
  resources :sessions
  resources :operators
end