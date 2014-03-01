class UsuariosController < ApplicationController
  def new
    @usuario = Usuario.new
  end

  def index
    @usuarios = Usuario.all
  end

  def create
    Usuario.create params.require(:usuario).permit(:nome, :email, :senha)
    redirect_to usuarios_path, notice: 'Usuário cadastrado com sucesso!'
  end
end
