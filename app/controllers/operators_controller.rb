class OperatorsController < ApplicationController
  def create
    @op=Operator.create(
                  user_id: params[:operator_id],
                  password: params[:password],
                  phone: params[:operator_phone],
                  name: params[:operator_name]
    )

    redirect_to '/homes#index'
  end

  def second_create
    @br=Branch.create(
                  universe: params[:uni],
                  major: params[:major]
    )

    redirect_to '/homes#index', notice: "회원가입 완료!!"
  end

  def index

  end
end
