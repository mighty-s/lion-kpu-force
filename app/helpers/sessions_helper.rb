module SessionsHelper
  def log_in(operator)
    session[:operator_id]=operator.id
  end

  def current_operator
    #계속해서 디비에 접근하는 부하를 해결하기 위해
    # 한번 접근하고 변수에 저장해놈

   @current_operator ||= Operator.find_by(id: session[:operator_id])
  end

  def operator_signed_in?
    !current_operator.nil?
  end

  def log_out
    session.delete(:user_id)
  end
end
