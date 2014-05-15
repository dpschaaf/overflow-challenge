module ApplicationHelper
  def current_user
    @user ||= User.find session[:id] if session[:id]
  end
end
