class UserSerializer < ActiveModel::Serializer
    attributes :id, :email, :name, :profile_pic, :trails
  end