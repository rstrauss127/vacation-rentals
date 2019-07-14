class ListingSerializer < ActiveModel::Serializer
  attributes :id, :address, :title, :description
  #has_many :reservations
end
