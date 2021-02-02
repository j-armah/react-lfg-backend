class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :genre, :image, :splash
end
