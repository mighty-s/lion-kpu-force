Rails.application.routes.draw do


  root 'homes#index'

  resources :homes
  resources :sessions
  resources :operators
  resource :table_managements
  resource :menu_managements
  
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
