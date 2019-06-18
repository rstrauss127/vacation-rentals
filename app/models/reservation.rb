class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :start_date, uniqueness: {message: "That date is booked already"}

  scope :start_date_before, ->(time) { where("start_date < ?", time) }

  def guest_email
    User.find(self.user_id).email
  end

  def listing_title
    Listing.find(self.listing_id).title
  end
end
