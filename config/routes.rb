Rails.application.routes.draw do

  get 'home/login'

  root 'notes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
