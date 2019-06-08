class User < ApplicationRecord
  has_secure_password
  has_many :listings
  has_many :reservations, through: :listings
  validates :email, presence: {message: "You need an email"}
  validates :email, uniqueness: {message: "That User exists already"}

end
