class OperatorsController < ApplicationController
  def create
    @op=Operator.create(
        user_id: params[:operator_id],
        password: params[:password],
        phone: params[:operator_phone],
        name: params[:operator_name]
    )

    redirect_to '/operators#index'
  end


  def index

  end


  def create_menu
  end


end