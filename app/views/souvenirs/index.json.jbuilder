json.array!(@souvenirs) do |souvenir|
  json.extract! souvenir, :id, :name, :phone, :address, :souvenir_type
  json.url souvenir_url(souvenir, format: :json)
end
