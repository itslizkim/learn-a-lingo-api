class UserSerializer < ActiveModel::Serializer
    attributes :id, :email, :name, :progress_trails
  end