Rails.application.routes.draw do

  root 'homes#index'

  resources :homes
  resources :sessions
  resources :operators

  get 'operators/create_menu'

  get 'user/viewmenu'

  get 'user/order'
  get 'homes/register'
  get 'homes/register_second'

  get 'user/order_history'

  get 'user/logout_user'

  get 'user/menual_user'
  get 'homes/index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
