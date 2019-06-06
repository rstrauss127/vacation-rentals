class Feature < ApplicationRecord
  belongs_to :listing #adds methods to model
  validates :description, presence: true
end
