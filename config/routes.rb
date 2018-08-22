Rails.application.routes.draw do
  root 'homes#index'
  get 'users/order_history'
  get 'users/menual_user'
  get 'operators/create_menu'

  resources :homes
  resources :sessions
  resources :operators
  resources :users
  resources :select_branches
  resources :makebrs
  resources :menu_managements
  resources :table_management2s
  resources :table_managements


  get 'menu_managements/new/:br_id' => 'menu_managements#new'
  get 'menu_managements/index/:br_id' => 'menu_managements#index'
  get 'table_managements/new/:br_id' => 'table_managements#new'
  get 'table_managements/index/:br_id' => 'table_managements#index'

  # get 'table_management2s/index'
  #
  # get 'table_management2s/create'
  #
  # get 'table_management2s/new'
  #
  # get 'select_branches/index'
  #
  # get 'select_branches/new'
  #
  # get 'select_branches/create'
  #
  # get 'select_branches/show'
  #
  # get 'makebrs/index'
  #
  # get 'makebrs/new'
  #
  # get 'makebrs/show'
  #
  # get 'makebrs/create'

end