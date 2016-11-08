class TourPackageSerializer < ActiveModel::Serializer
  attributes :id, :package_name, :price, :detail, :duration
end
