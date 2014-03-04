class Contato < ActiveRecord::Base
  validates :nome, :email, :mensagem, presence: true
  validates :nome, :mensagem, length: {minimum: 3}, on: :create
  validates :email, format: /.+@.+/

  def fake!
    self.nome = Faker::Name.name
    self.email = Faker::Internet.email
    self.mensagem = Faker::Lorem.paragraph
  end
end
