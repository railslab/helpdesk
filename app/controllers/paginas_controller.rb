class PaginasController < ApplicationController
  def home
  end

  def recurso
  end

  def preco
  end

  def contato
    @contato = Contato.new
  end

  def contatos
    @contatos = Contato.all.reverse_order
  end

  def enviar_contato
    @contato = Contato.create params.require(:contato).permit!
    if @contato.valid?
      redirect_to :contato_enviado
    else
      render :contato
    end
  end
end
