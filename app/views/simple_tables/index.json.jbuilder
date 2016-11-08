json.array!(@simple_tables) do |simple_table|
  json.extract! simple_table, :id, :name, :address, :phone, :website, :latitude, :longitude, :category_id
  json.url simple_table_url(simple_table, format: :json)
end
