class FlashCardSerializer < ActiveModel::Serializer
  attributes :id, :word, :audio, :img_url, :lesson
end
