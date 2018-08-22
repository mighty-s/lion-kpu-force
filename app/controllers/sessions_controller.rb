class SessionsController < ApplicationController
  def create
      #로그인 확인
      operator=Operator.find_by(user_id: params[:op_id])
      if operator && operator.authenticate(params[:password])
        log_in(operator)
        redirect_to select_branches_path, method: :get
        #redirect_to operators_path, method: :get
        #redirect_to users_path, method: :get
      else
        flash[:alert]="아이디 혹은 비밀번호가 일치하지 않습니다."
        redirect_to homes_path, method: :get
      end
  end

  def destroy
    log_out
    redirect_to :root
  end

  # def password_confirm
  #   password=params[:password]
  #   password_confirm=params[:password_confirm]
  #
  #   if password==password_confirm
  #
  #   end
  #   redirect_to
  # end
end
