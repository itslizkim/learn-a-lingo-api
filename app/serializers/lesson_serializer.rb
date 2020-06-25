class LessonSerializer < ActiveModel::Serializer
  attributes :language, :id, :name, :img_url, :flash_cards
end
