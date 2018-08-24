class SessionsController < ApplicationController
  # skip_before_filter :verify_authenticity_token, :only => :create
  def create
      #로그인 확인
      confirm_id=params[:op_id]

      if confirm_id.include?"@"
        #운영자 아이디면
        operator=Operator.find_by(email: params[:op_id])
        if operator && operator.authenticate(params[:password])
          log_in_operator(operator)
          redirect_to select_branches_path, method: :get
        else
          flash[:alert]="아이디 혹은 비밀번호가 일치하지 않습니다."
          redirect_to homes_path, method: :get
        end

      else
        #사용자 아이디면
        table=SeatOnuse.find(params[:op_id])
        if table && table.hash_code==params[:password]
          log_in_user(table)
          redirect_to users_path, method: :get
        else
          flash[:alert]="아이디 혹은 비밀번호가 일치하지 않습니다."
          redirect_to homes_path, method: :get
        end
      end

  end

  def destroy
    log_out
    redirect_to :root
  end

end
