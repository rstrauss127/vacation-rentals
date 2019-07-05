class Listing < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :users, through: :reservations
  has_many :attractions

  validates :title, presence: {message: "Must have title"}

  validates :bedrooms, presence: {message: "Number of bedrooms required"}
  validates :bedrooms, numericality: {message: "Must be a number"}

  validates :bathrooms, numericality: {message: "Must be a number"}
  validates :bathrooms, presence: {message: "Number of bathrooms required"}

  validates :description, presence: {message: "Description required"}


end
