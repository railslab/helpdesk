class ContatosController < ApplicationController
  def index
    @contatos = Contato.all.reverse_order
  end

  def new
    @contato = Contato.new
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
