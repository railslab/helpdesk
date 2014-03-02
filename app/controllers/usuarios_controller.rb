class UsuariosController < ApplicationController
  def new
    @usuario = Usuario.new
  end

  def index
    @usuarios = Usuario.all
  end

  def edit
    @usuario = model
  end

  def create
    @usuario = Usuario.create form_params
    if @usuario.valid?
      redirect_to_collection 'Usuário cadastrado com sucesso!'
    else
      render :new
    end
  end

  def update
    @usuario = model
    if @usuario.update form_params
      redirect_to_collection 'Usuário alterado com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    model.destroy
    redirect_to_collection 'Usuário excluído!'
  end

private

  def model
    Usuario.find params[:id]
  end

  def form_params
    params.require(:usuario).permit(:nome, :email, :password, :password_confirmation)
  end

  def redirect_to_collection(notice)
    redirect_to usuarios_path, notice: notice
  end

end
