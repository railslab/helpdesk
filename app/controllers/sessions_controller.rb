class SessionsController < ApplicationController
  def new

  end

  def create
    usuario = Usuario.find_by_email(params[:email])
    if usuario && usuario.authenticate(params[:password])
      session[:user_id] = usuario.id
      redirect_to root_path, notice: 'Bem Vindo!'
    else
      flash.now.alert = "Email ou Senha inválida!"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: 'Adeus!'
  end
end