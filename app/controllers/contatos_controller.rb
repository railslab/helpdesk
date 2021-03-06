class ContatosController < ApplicationController
  # proteger except: [:new, :create]

  def index
    @contatos = Contato.all.reverse_order
  end

  def new
    @contato = Contato.new
    @contato.fake! if Rails.env.development?
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
    flash[:success] = 'Email marcado como não lido!'
    redirect_to contatos_path
  end

  def create
    @contato = Contato.create params.require(:contato).permit!
    if @contato.valid?
      flash[:success] = 'Email enviado com sucesso!'
      redirect_to contatos_path
    else
      render :new
    end
  end
end
