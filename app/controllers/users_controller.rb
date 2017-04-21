class UsersController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]
  before_action :set_user, only: [:show, :edit, :update, :destroy]


  def show
    #/profile
  end

  def new
    #/signup
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to login_path, notice: t('notice.user_created') }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to profile_path, notice: t('notice.user_updated') }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :fullname)
    end
end
