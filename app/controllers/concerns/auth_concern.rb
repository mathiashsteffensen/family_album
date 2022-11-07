module AuthConcern
  private

  def logout
    session[:user_id] = nil
  end

  def login(user)
    session[:user_id] = user.id
  end

  def redirect_if_logged_in!
    redirect_to albums_path if current_user.present?
  end

  def require_authentication!
    redirect_to new_user_path unless current_user.present?
  end

  def logged_in?
    current_user.present?
  end

  # @return [User]
  def current_user
    @current_user ||=
      begin
        user_id = session[:user_id]
        User.find_by(id: user_id) if user_id.present?
      end
  end

  def current_user_id
    current_user&.id
  end
end
