json.array!(@carlines) do |carline|
  json.extract! carline, :id, :name, :phone, :address
  json.url carline_url(carline, format: :json)
end
