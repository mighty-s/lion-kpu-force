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

  resources :users
  resource :table_managements
  resource :operators
  resource :menu_managements
  resource :homes

  # ------------------  routes 홍준이형 ----------------

  get 'user/order'
  get 'home/register'
  get 'home/register_second'

  get 'user/order_history'

  get 'user/logout_user'

  get 'user/menual_user'
  get 'operators/creat_menu'

  # root 'home#login'  프론트 소현이 루트 path

  get 'home/login'

  get 'test/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
