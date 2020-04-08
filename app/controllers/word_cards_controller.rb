class WordCardsController < ApplicationController
    def index
        word_cards = WordCard.all
        render json: word_cards
    end
end
