class UsersController < ApplicationController
  expose(:user) { current_user }
  
  def profile 
  end
end
