class ApplicationController < ActionController::Base
  before_filter :require_user
  protect_from_forgery

  def current_user
    if @current_user.nil?
      @current_user = User.find(session[:user_id]) if session[:user_id]
    end
  end
  helper_method :current_user
  
  def require_user
    if current_user
      return true
    end
    redirect_to root_path
  end

  

  def is_admin
    p @current_user
    if (@current_user != nil) && (@current_user.role == "Admin")
      p "Admin works"
      return true
    end
    redirect_to root_path
  end

end