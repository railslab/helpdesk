class PaginasController < ApplicationController
  def home
  end

  def recurso
  end

  def preco
  end

  def contato
  end

  def enviar_contato
    contato = Contato.new

    contato.nome = params[:contato][:nome]
    contato.email = params[:contato][:email]
    contato.mensagem = params[:contato][:mensagem]

    contato.save
  end
end
