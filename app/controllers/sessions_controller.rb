class SessionsController < ApplicationController
  before_action :redirect_if_logged_in!, except: :destroy

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: session_params[:email])

    render_invalid_credentials unless @user

    @user.password = session_params[:password]

    if @user.valid_password?
      login(@user)
      redirect_to albums_path
    else
      render_invalid_credentials
    end
  end

  def destroy
    logout
    redirect_to new_session_path
  end

  private

  def render_invalid_credentials
    @user = User.new(**session_params)

    @user.errors.add(:base, "Invalid email or password")

    render :new, status: :bad_request
  end

  def session_params
    params.require(:user).permit(:email, :password)
  end
end
