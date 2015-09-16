class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      flash[:notice] = 'Logged In'
      redirect_to user
    else
      flash.now[:alert] = 'Invalid Email/Password Combination'
      render 'new'
    end
  end

  def destroy
    log_out
    flash[:notice] = 'Logged Out'
    redirect_to root_path
  end

end
