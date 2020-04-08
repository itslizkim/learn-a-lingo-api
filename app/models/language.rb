class Language < ApplicationRecord
    has_many :progress_trails
    has_many :users, through: :progress_trails

    has_many :lessons
end
