class Lesson < ApplicationRecord
    belongs_to :language
    has_many :flash_cards
    has_one :game
    
end
