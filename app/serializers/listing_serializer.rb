class ListingSerializer < ActiveModel::Serializer
  attributes :id, :address, :title
  has_many :reservations
end
