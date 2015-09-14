class UsersController < ApplicationController

  before_filter :set_user, only: [:show, :edit, :update]

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'You Have Successfully Signed Up!'
      redirect_to user_path(@user)
    else
      flash.now[:alert] = 'Invalid Sign Up Form'
      render 'new'
    end
  end

  def edit

  end

  def update
    if @user.update(user_params)
      flash[:notice] = 'You Have Successfully Updated Your Profile!'
      redirect_to user_path(@user)
    else
      flash.now[:alert] = 'Invalid Update Form'
      render 'edit'
    end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
