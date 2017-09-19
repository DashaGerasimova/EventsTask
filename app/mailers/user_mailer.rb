class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url  = 'https://eventstask.herokuapp.com/login'
    mail(to: @user.email, subject: 'Welcome to the Eventstask')
  end
end
