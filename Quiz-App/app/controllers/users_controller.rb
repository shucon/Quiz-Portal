class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    # debugger
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    @user.admin_status = "no"
    if @user.save
    	log_in @user
    	flash[:success] = "Successfull Signup"
    	redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end
