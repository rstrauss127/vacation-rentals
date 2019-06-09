class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :reservations, :user_id, :guest_id
    remove_column :reservations, :host_id
  end
end
