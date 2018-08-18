class MenuManagementsController < ApplicationController

  def index

  end

  def create
    @menu =Menu.new
    @menu.price =params[:menu_price]
    @menu.name =params[:menu_name]
    @menu.save
    redirect_to '/menu_managements'
    #   menu_managements 의 show 로 빠짐.
  end

  def new

  end


  def show
    @menu_struct =SeatStruture.all

  end

  def destroy

  end

  def edit

  end


end
