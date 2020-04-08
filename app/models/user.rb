class User < ApplicationRecord
    has_many :progress_trails
    has_many :languages, through: :progress_trails

    validates :email, uniqueness: true
    validates :email, presence: true

    has_secure_password
end
