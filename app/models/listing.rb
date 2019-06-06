class Listing < ApplicationRecord
  has_many :features #adds methods to model
  validates :title, presence: true
end
