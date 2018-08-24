class OperatorsController < ApplicationController
  def create
    @op=Operator.create(
                  email: params[:email],
                  password: params[:password],
                  phone: params[:operator_phone],
                  name: params[:operator_name]
    )

    redirect_to '/homes#index'
  end

  def index

  end
  def show

  end
end
