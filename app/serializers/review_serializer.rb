class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :reviewer_id, :reviewee_id, :contents, :rating
end
