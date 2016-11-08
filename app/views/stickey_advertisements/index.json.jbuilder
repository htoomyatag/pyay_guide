json.array!(@stickey_advertisements) do |stickey_advertisement|
  json.extract! stickey_advertisement, :id, :category
  json.url stickey_advertisement_url(stickey_advertisement, format: :json)
end
