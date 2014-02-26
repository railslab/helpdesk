class PaginasController < ApplicationController
  def home
  end

  def recurso
  end

  def preco
  end

  def contato
  end

  def contatos
    @contatos = Contato.all
  end

  def enviar_contato
    Contato.create params.require(:contato).permit!
  end
end
