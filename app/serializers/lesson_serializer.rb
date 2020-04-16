class LessonSerializer < ActiveModel::Serializer
  attributes :language, :name, :img_url, :flash_cards
end
