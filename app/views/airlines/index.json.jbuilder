json.array!(@airlines) do |airline|
  json.extract! airline, :id, :name, :phone, :address
  json.url airline_url(airline, format: :json)
end
