class AddDetailsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :description, :string
    add_column :listings, :bedrooms, :integer
    add_column :listings, :bathrooms, :float
  end
end
