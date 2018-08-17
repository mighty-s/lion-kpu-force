Rails.application.routes.draw do
  get 'operators/create_menu'

  get 'user/viewmenu'

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

>>>>>>> fdcc6c18bb4eebb4b0371b244b1c730a22bd19f1
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
