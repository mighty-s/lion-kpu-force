class MenuManagemenetController < ApplicationController

  def new
    @token = form_authenticity_token
  end

  def new_menu
    @menu = Menu.new
    {
        name: params[:name],
        price: params[:price]
    }
  end
  # branch 외래키를 어떻게 표현하지...?

end
