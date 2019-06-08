class Listing < ApplicationRecord
  belongs_to :user
  has_many :reservations #adds methods to model
  validates :title, presence: true
end
