class Reservation < ApplicationRecord

  belongs_to :listing
  #has_many :users, through :listing ??

  #need to write custom validations for :start_date and :end_date

  def start_time
    self.my_related_model.start_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  end

  def guest_email
    @user =  User.find(self.user_id)
    return @user.email
  end
end
