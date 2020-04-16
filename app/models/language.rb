class Language < ApplicationRecord
    has_many :trails
    has_many :users, through: :trails

    has_many :lessons
end
