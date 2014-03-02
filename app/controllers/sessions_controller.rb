class SessionsController < ApplicationController
  def new

  end

  def create
    session[:user_id] = 3
    redirect_to root_path, notice: 'Bem Vindo!'
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: 'Adeus!'
  end
end