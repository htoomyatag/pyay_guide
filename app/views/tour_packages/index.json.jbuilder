json.array!(@tour_packages) do |tour_package|
  json.extract! tour_package, :id, :package_name, :price, :detail, :duration
  json.url tour_package_url(tour_package, format: :json)
end
