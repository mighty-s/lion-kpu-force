class MenuManagementsController < ApplicationController
  def index

  end

  def create
    @menu = Menu.create(
        name: params[:menu][:name],
        price: params[:menu][:price],
        branch_id: params[:br_id]
    )

  end

  def show

  end

  def index

  end

  def edit

  end

  def delete

  end

  def new

  end
end