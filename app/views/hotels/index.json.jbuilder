json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :address, :phone, :website, :latitude, :longitude, :hoteltype
  json.url hotel_url(hotel, format: :json)
end
