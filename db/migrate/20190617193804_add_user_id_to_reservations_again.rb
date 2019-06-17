class AddUserIdToReservationsAgain < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :user_id, :integer
    remove_column :reservations, :guest_email
  end
end
