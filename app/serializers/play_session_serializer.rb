class PlaySessionSerializer < ActiveModel::Serializer
  attributes :id, :sender_id, :receiver_id, :game_id, :is_accepted, :time, :rejected

  belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"

  # has_one :game
  belongs_to :game
  has_many :reviews
end
