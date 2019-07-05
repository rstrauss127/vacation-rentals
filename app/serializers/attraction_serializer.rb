class AttractionSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :type, :distance
end
