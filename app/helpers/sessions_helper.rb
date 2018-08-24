module SessionsHelper
  def log_in_operator(operator)
    session[:operator_id]=operator.id
  end

  def log_in_user(table)
    session[:table_id]=table.id
  end

  def confirm_log_in?(confirm_id)
    #마지막줄 리턴
    email_format==/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  end

  def current_operator
    #계속해서 디비에 접근하는 부하를 해결하기 위해
    # 한번 접근하고 변수에 저장해놈

   @current_operator ||= Operator.find_by(id: session[:operator_id])
  end

  def current_user
    #계속해서 디비에 접근하는 부하를 해결하기 위해
    # 한번 접근하고 변수에 저장해놈

    @current_user||= SeatOnuse.find(session[:table_id])
  end

  def operator_signed_in?
    !current_operator.nil?
  end

  def user_signed_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
  end
end
