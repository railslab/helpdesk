class Contato < ActiveRecord::Base
  validates :nome, :email, :mensagem, presence: true
  validates :email, uniqueness: true
end
