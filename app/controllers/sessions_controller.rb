class SessionsController < ApplicationController
  def create
      #로그인 확인
      operator=Operator.find_by(user_id: params[:op_id])
      if operator && operator.authenticate(params[:password])
        session[:operator_id]=operator.id
        redirect_to operators_path, method: :get
      else
        flash[:alert]="아이디 혹은 비밀번호가 일치하지 않습니다."
        redirect_to homes_path, method: :get
      end
  end
end
