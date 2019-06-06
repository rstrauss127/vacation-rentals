class CreateFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :features do |t|
      t.string :description
      t.integer :listing_id
      t.timestamps
    end
  end
end
