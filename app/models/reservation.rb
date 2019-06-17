class Reservation < ApplicationRecord
  belongs_to :listing
  has_many :users, through: :listing

  
  def start_time
    self.my_related_model.start_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  end

  def guest_email
    @user =  User.find(self.guest_id)
    return @user.email
  end
end
