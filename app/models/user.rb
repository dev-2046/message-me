class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true, length: { minimum: 3, maximum: 20 }

  has_many :messages
  has_secure_password
end

