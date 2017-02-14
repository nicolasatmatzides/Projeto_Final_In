class SessionsController < ApplicationController
  
  skip_before_action :require_login, only: [:new, :create]
  
  before_action :redirect_if_logged_in, :except => [:destroy]

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user 
        user.update_attribute(:last_time, DateTime.now)
        redirect_to '/home'
      else
      flash.now[:danger] = 'Combinação inválida de email/senha'
      render 'new'
      end
  end
  
  def destroy
    log_out
  end
  
  
  private
  
  def redirect_if_logged_in
    if logged_in?
      redirect_to '/home', :notice => 'Você ja está logado'
    end
  end
  
  
    def nao_logado
      if logged_in?
        redirect_to users_path, :notice => 'Você ja está logado'
      end
    end
end