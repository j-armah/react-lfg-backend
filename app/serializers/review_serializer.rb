class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :reviewer_id, :reviewee_id, :contents, :rating, :reviewee, :reviewer, :game
  belongs_to :reviewer, class_name: "User", foreign_key: "reviewer_id"
  belongs_to :reviewee, class_name: "User", foreign_key: "reviewee_id"

  belongs_to :play_session

  def game 
    game = self.object.play_session.game.name

    return game
  end
end
