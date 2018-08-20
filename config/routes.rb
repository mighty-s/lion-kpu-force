Rails.application.routes.draw do
  root 'homes#index'

  resources :homes
  resources :sessions
  resources :operators
end