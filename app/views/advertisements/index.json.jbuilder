json.array!(@advertisements) do |advertisement|
  json.extract! advertisement, :id, :category, :shop_id, :category
  json.url advertisement_url(advertisement, format: :json)
end
