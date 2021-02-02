class PlaySessionSerializer < ActiveModel::Serializer
  attributes :id, :sender_id, :receiver_id, :game_id, :is_accepted, :time
end
