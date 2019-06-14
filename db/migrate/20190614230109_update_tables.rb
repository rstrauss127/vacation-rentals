class UpdateTables < ActiveRecord::Migration[5.2]
  def change
    rename_column :listings, :user_id, :owner_id
    remove_column :reservations, :user_id, :integer
  end
end
