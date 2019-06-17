class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :start_date, uniqueness: {message: "That date is booked already"}


  scope :start_date_before, ->(time) { where("start_date < ?", time) }
end
