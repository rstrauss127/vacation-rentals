class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :title

      t.timestamps #null: false (means cant be blank)
    end
  end
end
