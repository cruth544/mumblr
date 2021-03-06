class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.where(email: user_params[:email]).first
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      flash[:success] = 'You are signed in!'
      redirect_to root_path
    else
      flash[:error] = 'Unable to sign in'
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

end
