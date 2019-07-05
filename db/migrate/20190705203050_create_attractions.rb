class CreateAttractions < ActiveRecord::Migration[5.2]
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :address
      t.string :type
      t.float :distance
      t.string :link
      t.integer :listing_id
      t.string :description
    end
  end
end
