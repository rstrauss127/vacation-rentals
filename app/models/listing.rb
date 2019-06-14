class Listing < ApplicationRecord
  belongs_to :owner, :class_name => 'User'
  has_many :reservations #adds methods to model
  has_many :users, through: :reservations

  validates :title, presence: {message: "Must have title"}

  validates :bedrooms, numericality: {message: "Must be a number"}
  validates :bathrooms, numericality: {message: "Must be a number"}
end
