class User < ApplicationRecord
    has_many :trails
    has_many :languages, through: :trails
    has_many :user_lessons, through: :languages, source: :lessons

    validates :email, uniqueness: true
    validates :email, presence: true

    has_secure_password
end
