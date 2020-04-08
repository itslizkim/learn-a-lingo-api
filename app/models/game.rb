class Game < ApplicationRecord
    belongs_to :lesson
    has_many :word_cards
end
