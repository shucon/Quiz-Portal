class AdminController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password]) && user.admin_status == "yes"
      log_in user
      @user_login = user
      redirect_to '/admin'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:success] = 'Successfully Logged Out'
    redirect_to root_url
  end

  def monitor
  end
end
