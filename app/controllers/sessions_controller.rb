class SessionsController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]

  def new 
    #/login
  end

  def create
    user = User.find_by(email: params[:user][:email])
    password = params[:user][:password]

    if user&&user.authenticate(password)
      session[:user_id] = user.id
      redirect_to profile_path, notice: t('notice.logged_in')
    else 
      redirect_to login_path, alert: t('alert.invalid_log/pas')
    end
  end

  def destroy
    reset_session
    redirect_to '/login', notice: t('notice.logged_out')
  end
end
