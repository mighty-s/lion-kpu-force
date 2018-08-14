Rails.application.routes.draw do
  get 'user/viewmenu'

  get 'user/order'

  get 'user/order_history'

  get 'user/logout_user'

  get 'user/menual_user'

  root 'home#login'
  get 'home/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
