module SessionsHelper

  def log_in(user)
      session[:user_id] = user.id
      session[:user_name] = user.name
  	  session[:admin] = user.admin_status
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    session.delete(:admin)
    session.delete(:user_name)
    @current_user = nil
  end
  
end
