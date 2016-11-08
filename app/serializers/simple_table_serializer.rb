class SimpleTableSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone, :website, :latitude, :longitude, :category_id
end
