class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = "Login Success"
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user
    else
      flash.now[:danger] = "Invalid User"
      render :new
    end

  end
  def destroy
    log_out if logged_in?
    flash[:success] = "Logout Success"
    redirect_to root_url
  end
end
