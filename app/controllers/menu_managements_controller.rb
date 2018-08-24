class MenuManagementsController < ApplicationController
  def index

  end

  def create
    @token = form_authenticity_token
    @menu = Menu.create(
        name: params[:menu][:name],
        price: params[:menu][:price],
        branch_id: params[:br_id]
    )
    redirect_to '/menu_managements/new/' + '/' + params[:br_id]
  end

  def show

  end

  def index

  end

  def edit
    @token = form_authenticity_token
    @menu123 = Menu.find(params[:m_id])
    @menu123.id = params[:m_id]
    @menu123.name = params[:m_name]
    @menu123.content = params[:m_content]
  end

  def destroy
    menu = Menu.find(params[:id])
    Menu.destroy(params[:id])

    redirect_to '/menu_managements/new/' + '/' + params[:br_id]
  end

  def new
    @menu_id = Menu.where(branch_id: params[:br_id])
  end

  def update
    @toekn = form_authenticity_token

    menu = Menu.find(params[:id])
    menu.name = params[:menu][:name]
    menu.price = params[:menu][:price]
    menu.content = params[:menu][:content]

    redirect_to '/menu_managements/new/' + '/' + params[:br_id]

  end
end