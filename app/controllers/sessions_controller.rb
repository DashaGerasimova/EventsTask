class SessionsController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]

  def create
    user = User.find_by(email: params[:user][:email])
    password = params[:user][:password]

    if user&&user.authenticate(password)
      session[:user_id] = user.id
      redirect_to user_path(user.id), notice: t('Logged in')
    else 
      redirect_to login_path, alert: t('Invalid log/pas')
    end
  end

  def destroy
    reset_session
    redirect_to '/login', notice: t('Logged out')
  end
end
