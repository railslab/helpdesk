module ApplicationHelper
  def user_session
    session[:user_id]
  end

  def user_signed_in?
    !! user_session
  end

  def current_user
    Usuario.find user_session
  end
end
