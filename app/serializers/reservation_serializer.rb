class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :listing_id, :user_id
  belongs_to :listing
end
