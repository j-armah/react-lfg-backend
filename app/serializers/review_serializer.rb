class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :reviewer_id, :reviewee_id, :contents, :rating, :reviewee, :reviewer, :game, :tags
  belongs_to :reviewer, class_name: "User", foreign_key: "reviewer_id"
  belongs_to :reviewee, class_name: "User", foreign_key: "reviewee_id"

  belongs_to :play_session

  has_many :tags, through: :review_tags

  def game 
    game = self.object.play_session.game.name

    return game
  end

  def tags
    tags = self.object.tags
  end

end
