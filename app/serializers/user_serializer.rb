class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :avatar, :bio, :discord, :lfg, :reviews_as_reviewee, :reviews_as_reviewer, :avg

  has_many :sessions_as_receiver, foreign_key: :receiver_id, class_name: "PlaySession"
  has_many :sessions_as_sender, foreign_key: :sender_id, class_name: "PlaySession"

  has_many :reviews_as_reviewer, foreign_key: :reviewer_id, class_name: "Review"
  has_many :reviews_as_reviewee, foreign_key: :reviewee_id, class_name: "Review"

  has_many :user_games
  has_many :games, through: :user_games

  def reviews_as_reviewee
    reviews_as_reviewee = self.object.reviews_as_reviewee.reverse

    return reviews_as_reviewee
  end

  def avg
    array = self.object.reviews_as_reviewee
    review_sum = array.sum(&:rating)
    if array.length > 0
      avg_rating = review_sum / array.length
      return avg_rating.round(1)
    else 
      avg_rating = 0 
      return avg_rating
    end
  end
end
