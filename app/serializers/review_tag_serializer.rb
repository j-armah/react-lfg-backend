class ReviewTagSerializer < ActiveModel::Serializer
  attributes :id, :review_id, :tag_id

  belongs_to :review
  belongs_to :tag
end
