json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :phone, :address, :restaurant_type
  json.url restaurant_url(restaurant, format: :json)
end
