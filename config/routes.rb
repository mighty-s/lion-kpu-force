Rails.application.routes.draw do

  #
  # get 'homes/menu_managements'
  #
  # get 'homes/operators'
  #
  # get 'homes/table_managements'
  #
  # get 'homes/uers'
  #
  # root 'operator#index'


  root 'operators#index'

  resources :users
  resource :table_managements
  resource :operators
  resource :menu_managements
  resource :homes


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
