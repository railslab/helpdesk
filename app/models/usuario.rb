class Usuario < ActiveRecord::Base
  validates :nome, :email, :senha, presence: true
  validates :email, uniqueness: true
  validates :senha, confirmation: {message: 'senha não confere'}
  validates :senha_confirmation, presence: true
end
