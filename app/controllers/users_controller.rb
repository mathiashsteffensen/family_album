class UsersController < ApplicationController
  before_action :redirect_if_logged_in!, only: [:new, :create]
  before_action :require_authentication!, only: [:logout]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save!

    login(@user)

    redirect_to new_album_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
