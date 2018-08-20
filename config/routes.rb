Rails.application.routes.draw do

  # ------------------  routes 홍준이형 ----------------
  get 'operators/create_menu'

  get 'user/viewmenu'
 
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

  #resources :users
  resource :table_managements
  resource :operators
  resource :menu_managements
  resource :homes

  # ------------------  routes 소현이 ----------------

  get 'users/order'
  get 'homes/register'
  get 'homes/register_second'

  get 'users/order_history'

  get 'users/logout_user'

  get 'users/menual_user'
  get 'operators/creat_menu'

  # root 'homes#login'  프론트 소현이 루트 path

  get 'homes/login'

  get 'tests/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
