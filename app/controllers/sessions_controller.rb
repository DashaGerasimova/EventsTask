class SessionsController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(email: params[:user][:email])
    password = params[:user][:password]

    if user&&user.authenticate(password)
      session[:user_id] = user.id
      redirect_to events_path, notice: "Logged in successfully"
    else 
      redirect_to login_path, alert: "Invalid login/password"
    end
  end

  def destroy
    reset_session
    redirect_to 'login', notice: 'logged out'
  end
end
