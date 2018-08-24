Rails.application.routes.draw do

  # get 'bill_checks/index'
  #
  # get 'bill_checks/new'
  #
  # get 'bill_checks/create'
  #
  # get 'bill_checks/show'
  #
  # get 'bill_checks/update'
  #
  # get 'bill_checks/edit'
  #
  # get 'bill_check/index'
  #
  # get 'bill_check/new'
  #
  # get 'bill_check/show'
  #
  # get 'bill_check/edit'
  #
  # get 'bill_check/update'
  #
  # get 'bill_check/create'

  # get 'users/index'
  #
  # get 'users/viewmenu'
  #
  # get 'users/order_history'
  #
  # get 'users/logout_user'

  # get 'table_management2s/create'

  # get 'table_managements2/index'
  #
  # get 'table_managements2/create'
  #
  # get 'table_managements2/show'
  #
  # get 'table_managements2/new'

  # get 'table_managements/create'
  #
  # get 'table_managements/new'
  #
  # get 'table_managements/index'
  #
  # get 'table_managements/show'
  #
  # get 'table_managements/edit'
  #
  # get 'table_managements/delete'
  #
  # get 'menu_managements/index'
  #
  # get 'menu_managements/new'
  #
  # get 'menu_managements/show'
  #
  # get 'menu_managements/create'
  #
  # get 'menu_managements/edit'
  #
  # get 'menu_managements/delete'
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
  # get 'makebs/index'
  #
  # get 'makebs/new'
  #
  # get 'makebranches/index'
  #
  # get 'makebranches/new'
  #
  # get 'makebranch/index'
  #
  # get 'makebranch/create'
  #
  # get 'makebranch/show'
  #
  # get 'makebranch/new'
  #
  # get 'make_branches/index'
  #
  # get 'make_branches/new'
  #
  # get 'make_branches/show'
  #
  # get 'make_branches/create'
  #
  # get 'make_branch/index'
  #
  # get 'make_branch/create'
  #
  # get 'make_branch/show'
  #
  # get 'make_branch/new'
  #
  # get 'session2/create'
  root 'homes#index'

  get 'users/order_history'
  get 'users/menual_user'


  resources :homes
  resources :sessions
  resources :select_branches
  resources :operators
  resources :makebrs
  resources :users
  resources :menu_managements
  get 'menu_managements/new/:br_id' => 'menu_managements#new'
  # get 'menu_managements/index/:br_id' => 'menu_managements#index'
  resources :table_management2s
  resources :table_managements
  resources :bill_checks
  get 'table_managements/new/:br_id' => 'table_managements#new'
  get 'table_managements/index/:br_id' => 'table_managements#index'
  get 'menu_managements/create/:br_id' => 'menu_managements#create'
  delete 'menu_managements/destroy/:br_id' => 'menu_managements#destroy'
  get 'menu_managements/delete/:br_id' => 'menu_managements#delete'
  get 'menu_managements/update/:br_id' => 'menu_managements#update'
  get 'menu_managements/edit/:br_id' => 'menu_managements#edit'
  get 'bill_check/show/:br_id' => 'bill_check#show'
  get 'bill_check/index/:br_id' => 'bill_check#show'

end