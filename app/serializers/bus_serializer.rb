class BusSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone, :website, :latitude, :longitude, :fromtownship, :totownship, :departuretime
end
