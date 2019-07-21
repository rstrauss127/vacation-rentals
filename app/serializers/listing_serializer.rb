class ListingSerializer < ActiveModel::Serializer
  attributes :id, :address, :city, :state, :title, :description
  #has_many :reservations
end
