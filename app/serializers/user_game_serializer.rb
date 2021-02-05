class UserGameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :game_id, :details, :platform, :level, :server, :image, :user

  
  belongs_to :user
  # belongs_to :game
end
