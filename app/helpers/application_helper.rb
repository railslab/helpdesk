module ApplicationHelper
  def user_signed_in?
    session[:user_id]
  end

  def current_user
    Usuario.find session[:user_id]
  end
end
