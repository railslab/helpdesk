class Usuario < ActiveRecord::Base
  has_secure_password

  validates :nome, :email, presence: true
  validates :email, uniqueness: true
end
