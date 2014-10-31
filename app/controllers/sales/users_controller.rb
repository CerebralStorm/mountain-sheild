class Sales::UsersController < ApplicationController
  def index
    @users = User.paginate(:page => params[:page], :per_page => 30)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to sales_user_path(@user)
    else
      render "new"
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to sales_user(@user)
    else
      render "edit"
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to sales_users_path
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end