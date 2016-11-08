json.array!(@ratings) do |rating|
  json.extract! rating, :id, :username, :rate_number, :rate_name, :rate_category
  json.url rating_url(rating, format: :json)
end
