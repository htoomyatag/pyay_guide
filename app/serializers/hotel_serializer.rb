class HotelSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone, :website, :latitude, :longitude, :hoteltype
end
