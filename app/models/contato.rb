class Contato < ActiveRecord::Base
  validates :nome, :email, :mensagem, presence: true
  validates :nome, :mensagem, length: {minimum: 3}
  validates :email, format: /.+@.+/

  def lido?
  end
end
