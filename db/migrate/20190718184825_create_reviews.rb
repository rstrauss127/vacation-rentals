class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :listing_id
      t.integer :reviewew_id
      t.string :body
      
      t.timestamps
    end
  end
end
