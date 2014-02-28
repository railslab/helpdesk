class Contato < ActiveRecord::Base
  validates :nome, :email, :mensagem, presence: true
  validates :nome, :mensagem, length: {minimum: 3}, on: :create
  validates :email, format: /.+@.+/
end
