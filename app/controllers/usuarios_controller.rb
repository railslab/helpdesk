class UsuariosController < ApplicationController
  def new
    @usuario = Usuario.new
  end

  def index
    @usuarios = Usuario.all
  end

  def edit
    @usuario = Usuario.find params[:id]
  end

  def create
    @usuario = Usuario.create params.require(:usuario).permit(:nome, :email, :password, :password_confirmation)
    if @usuario.valid?
      redirect_to usuarios_path, notice: 'Usuário cadastrado com sucesso!'
    else
      render :new
    end
  end

  def update
    @usuario = Usuario.find params[:id]
    if @usuario.update params.require(:usuario).permit(:nome, :email, :password, :password_confirmation)
      redirect_to usuarios_path, notice: 'Usuário alterado com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    Usuario.find(params[:id]).destroy
    redirect_to usuarios_path, notice: 'Usuário excluído!'
  end
end
