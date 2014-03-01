class Usuario < ActiveRecord::Base
  validates :nome, :email, :senha, presence: true
  validates :email, uniqueness: true
end
