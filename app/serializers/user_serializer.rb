class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :avatar, :bio, :discord, :lfg, :reviews_as_reviewee, :reviews_as_reviewer

  has_many :sessions_as_receiver, foreign_key: :receiver_id, class_name: "PlaySession"
  has_many :sessions_as_sender, foreign_key: :sender_id, class_name: "PlaySession"

  has_many :reviews_as_reviewer, foreign_key: :reviewer_id, class_name: "Review"
  has_many :reviews_as_reviewee, foreign_key: :reviewee_id, class_name: "Review"

  has_many :user_games
  has_many :games, through: :user_games
end
