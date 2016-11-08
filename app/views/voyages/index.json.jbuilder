json.array!(@voyages) do |voyage|
  json.extract! voyage, :id
  json.url voyage_url(voyage, format: :json)
end
