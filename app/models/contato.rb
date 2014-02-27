class Contato < ActiveRecord::Base
  validates :nome, :email, :mensagem, presence: true
end
