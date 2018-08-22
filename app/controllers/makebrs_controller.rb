class MakebrsController < ApplicationController
  def index
    @op = Operator.where(operator_id: session[:operator_id])
  end

  def new
    @token = form_authenticity_token
  end

  def show
  end

  def create
    op_id = params[:op_id].to_s
    @br = Branch.create(
        universe: params[:branch_school],
        major: params[:branch_major],
        operator_id: op_id
    )

    redirect_to select_branches_path  # 브렌치 선택으로 이동.
  end
end