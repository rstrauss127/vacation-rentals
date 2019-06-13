class Reservation < ApplicationRecord

  belongs_to :listing
  #has_many :users, through :listing ??

  #need to write custom validations for :start_date and :end_date


  def guest_email
    @user =  User.find(self.user_id)
    return @user.email
  end
end
