class UsersController < ApplicationController
  skip_before_action :login_required
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to login_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :experience, :purpose)
  end
  
end
