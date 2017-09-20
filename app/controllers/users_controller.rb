class UsersController < ApplicationController
  expose(:user) { current_user }
  expose_decorated :events, from: :user

  before_action :authenticate_user!

  def profile; end
end
