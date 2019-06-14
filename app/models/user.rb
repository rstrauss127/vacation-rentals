class User < ApplicationRecord
  has_secure_password
  
  has_many :listings
  has_many :reservations, through: :listings

  validates :email, presence: {message: "You need an email"}
  validates :email, uniqueness: {message: "That user exists already"} #make a method that will reroute to login in page if email already exists


  def self.find_or_create_by_omniauth(auth_hash)
    self.where(email: auth_hash["info"]["email"]).first_or_create do |user|
      user.password = SecureRandom.hex
    end
  end

end
