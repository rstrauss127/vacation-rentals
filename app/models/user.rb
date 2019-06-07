class User < ApplicationRecord
  has_secure_password
  validates :email, presence: {message: "You need an email"}
  validates :email, uniqueness: {message: "That User exists already"}

end
