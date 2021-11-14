class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?
  def logged_in?
    !!current_user
  end


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    unless logged_in?
      flash[:error] = "You must be logged in in order to perform this action"
      redirect_to login_path
    end
  end
end
