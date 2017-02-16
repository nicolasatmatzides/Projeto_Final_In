module SessionsHelper
  
    def log_in(user)
      session[:user_id] = user.id
    end
    
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end
    
    def logged_in?
      !current_user.nil?
    end
    
    def log_out
      session.delete(:user_id)
      @current_user = nil
      redirect_to(:root)
    end
  
    def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_url
    end
  end
  def authorize
    unless current_user.admin?
      redirect_to '/home'
    end
  end
  
  
end