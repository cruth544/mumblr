class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    if current_user == User.find(params[:id])
      @user = User.find(params[:id])
    else
      redirect_to user_path(current_user)
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = "You have been registered"
      redirect_to user_path(@user)
    else
      flash[:error] = "Registration has failed"
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_edit_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def user_edit_params
    params.require(:user).permit(:handle, :profile_image_uri)

  end

end
