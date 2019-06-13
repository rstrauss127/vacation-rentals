class Listing < ApplicationRecord
  belongs_to :user
  has_many :reservations #adds methods to model

  validates :title, presence: {message: "Must have title"}
  
  validates :bedrooms, numericality: true, {message: "Must be a number"}
  validates :bathrooms, numericality: true, {message: "Must be a number"}
end
