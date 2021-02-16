class UserGameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :game_id, :details, :platform, :level, :server, :image, :user, :game, :reviews

  
  belongs_to :user
  # belongs_to :game

  # def recommends
  #   reviews = self.object.user.reviews_as_reviewee
  #   recommends = reviews.select { |review| review.rating >= 4}.length

  #   return recommends
  # end

  # def avg
  #   reviews = self.object.user.reviews_as_reviewee

  #   review_sum = reviews.sum(&:rating)
  #   if reviews.length > 0
  #     avg_rating = review_sum / reviews.length
  #     return avg_rating.round(1)
  #   else 
  #     avg_rating = 0 
  #     return avg_rating
  #   end
  #end

  def reviews
    reviews = self.object.user.reviews_as_reviewee
  end
end
