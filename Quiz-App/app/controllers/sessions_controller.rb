class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])&&user.admin_status == "no"
      log_in user
      redirect_to '/quiz'
    else
      flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:success] = 'Successfully Logged Out'
    redirect_to root_url
  end

end
