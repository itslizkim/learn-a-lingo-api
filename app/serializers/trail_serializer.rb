class TrailSerializer < ActiveModel::Serializer
  attributes :id, :language
  has_one :user
end
