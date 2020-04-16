class UserSerializer < ActiveModel::Serializer
    attributes :id, :email, :name, :profile_pic, :progress_trails
  end