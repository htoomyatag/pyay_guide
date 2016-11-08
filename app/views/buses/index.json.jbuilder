json.array!(@buses) do |bus|
  json.extract! bus, :id, :name, :address, :phone, :website, :latitude, :longitude, :fromtownship, :totownship, :departuretime
  json.url bus_url(bus, format: :json)
end
