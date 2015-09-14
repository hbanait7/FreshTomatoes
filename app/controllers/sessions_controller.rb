class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      flash[:notice] = 'Successfully Logged In'
      redirect_to user_path(user)
    else
      flash.now[:alert] = 'Invalid Email/Password Combination'
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:notice] = 'Successfully Logged Out'
    redirect_to root_path
  end

end
