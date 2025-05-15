class User < ApplicationRecord
  has_secure_password
  has_many :posts

  validates :name, :status, :email, :password_digest, presence: true
end
