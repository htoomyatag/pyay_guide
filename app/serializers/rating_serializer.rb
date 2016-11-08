class RatingSerializer < ActiveModel::Serializer
  attributes :id, :username, :rate_number, :rate_name, :rate_category
end
