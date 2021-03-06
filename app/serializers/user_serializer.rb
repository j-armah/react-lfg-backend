class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :avatar, :bio, :discord, :lfg, :reviews_as_reviewee, :reviews_as_reviewer, :avg, :recommends

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

  def accepted_sessions
    user_sessions = [self.object.sessions_as_receiver, self.object.sessions_as_receiver]
    user_sessions.flatten.select{ |session| session.accepted == true}
    return user_sessions
  end

  def recommends
    reviews_as_reviewee = self.object.reviews_as_reviewee
    recommends = reviews_as_reviewee.select { |review| review.rating >= 4}.length

    return recommends
  end


  # def total_tags
  #   tag_hash = {}
  #   for tag_arr in self.object.reviews_as_reviewee.tags do 
  #     for tag in tag_arr do
  #       if hash[tag.name]
  #         hash[tag.name] += 1
  #       else
  #         hash[tag.name] = 1
  #       end
  #     end
  #   end
  #   return tag_hash
  # end

end
