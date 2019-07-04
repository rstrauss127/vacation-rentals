class ListingSerializer < ActiveModel::Serializer
  attributes :id, :address, :bathrooms, :bedrooms, :title, :description
end
