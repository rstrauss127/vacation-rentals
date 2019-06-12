class Reservation < ApplicationRecord
  belongs_to :listing
  #has_many :users, through :listing
  def guest_email
    @user =  User.find(self.user_id)
    return @user.email
  end
end
