class RemoveEndDateFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :end_date
  end
end
