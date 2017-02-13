class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user 
        redirect_to '/home'
      else
      flash.now[:danger] = 'Combinação inválida de email/senha'
      render 'new'
      end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
  
  private
  
    def nao_logado
      if logged_in?
        redirect_to users_path, :notice => 'Você ja está logado'
      end
    end
end