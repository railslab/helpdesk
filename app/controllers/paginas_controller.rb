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
    @contatos = Contato.all
  end

  def enviar_contato
    @contato = Contato.create params.require(:contato).permit!
    if @contato.valid?
      render :enviar_contato
    else
      render :contato
    end
  end
end
