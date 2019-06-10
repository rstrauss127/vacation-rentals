class Reservation < ApplicationRecord
  belongs_to :listing

  def set_start_date
    self.start_date
  end
end
