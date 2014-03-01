class UsuariosController < ApplicationController
  def new
    @usuario = Usuario.new
  end

  def index
    @usuarios = Usuario.all
  end

  def create
    @usuario = Usuario.create params.require(:usuario).permit(:nome, :email, :senha, :senha_confirmation)
    if @usuario.valid?
      redirect_to usuarios_path, notice: 'Usuário cadastrado com sucesso!'
    else
      render :new
    end
  end
end
