class OperatorsController < ApplicationController
  def create
    @op=Operator.create(
                  user_id: params[:operator_id],
                  pw: params[:operator_pw],
                  phone: params[:operator_phone],
                  name: params[:operator_name]
    )

    redirect_to '/homes/second_new'
  end

  def second_create
    @br=Branch.create(
                  universe: params[:uni],
                  major: params[:major]
    )

    redirect_to '/homes#index', notice: "회원가입 완료!!"
  end
end
