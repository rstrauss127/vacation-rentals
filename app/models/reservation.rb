class Reservation < ApplicationRecord
  belongs_to :listing
  #has_many :users, through :listing

end
