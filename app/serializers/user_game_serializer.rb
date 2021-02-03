class UserGameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :game_id, :details, :user


end
