class User < ApplicationRecord
    has_many :trails
    has_many :languages, through: :trails

    validates :email, uniqueness: true
    validates :email, presence: true

    has_secure_password
end
