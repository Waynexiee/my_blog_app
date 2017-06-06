class User < ApplicationRecord
  before_save { email.downcase! }
  validates :email, presence: true, length: { maximum: 255 }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
