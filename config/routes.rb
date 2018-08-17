Rails.application.routes.draw do
  get 'user/viewmenu'

<<<<<<< HEAD
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

=======
  get 'user/order'
  get 'home/register'
  get 'home/register_second'

  get 'user/order_history'

  get 'user/logout_user'

  get 'user/menual_user'

  root 'home#login'
  get 'home/login'

<<<<<<< HEAD
=======
  get 'test/index'
>>>>>>> dffeb31dcfc912f3e13ef788092c0ade1a71f1ab

>>>>>>> fdcc6c18bb4eebb4b0371b244b1c730a22bd19f1
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
