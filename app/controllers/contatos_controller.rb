class ContatosController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "123", only: :index

  def index
    @contatos = Contato.all.reverse_order
  end

  def new
    @contato = Contato.new
  end

  def show
    @contato = Contato.find params[:id]
    @contato.lido = true
    @contato.save!
  end

  def unread
    @contato = Contato.find params[:id]
    @contato.lido = false
    @contato.save!
    redirect_to contatos_path
  end

  def create
    @contato = Contato.create params.require(:contato).permit!
    if @contato.valid?
      redirect_to :contato_enviado
    else
      render :new
    end
  end

  def enviado
  end
end
