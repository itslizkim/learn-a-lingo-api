class LanguageSerializer < ActiveModel::Serializer
  attributes :id, :language
  has_many :lessons
end
